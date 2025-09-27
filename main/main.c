/**
 ****************************************************************************************************
 * @file        main.c
 * @author      正点原子团队(ALIENTEK)
 * @version     V1.0
 * @date        2023-12-01
 * @brief       颜色识别实验
 * @license     Copyright (c) 2020-2032, 广州市星翼电子科技有限公司
 ****************************************************************************************************
 * @attention
 *
 * 实验平台:正点原子 ESP32-S3开发板
 * 在线视频:www.yuanzige.com
 * 技术论坛:www.openedv.com
 * 公司网址:www.alientek.com
 * 购买地址:openedv.taobao.com
 *
 ****************************************************************************************************
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "led.h"
#include "lcd.h"
#include "xl9555.h"
#include "camera.h"
#include "esp_system.h"
#include "nvs_flash.h"
#include "freertos/FreeRTOS.h"
#include "freertos/queue.h"
#include "freertos/task.h"
#include "freertos/semphr.h"
#include "esp_color_detection.hpp"

i2c_obj_t i2c0_master;
unsigned long x_i = 0;
unsigned long x_j = 0;
extern QueueHandle_t xQueueAIFrameO;
camera_fb_t *face_ai_frameO = NULL;

/**
 * @brief       LCD显示图像（RGB565）
 * @param       x:x轴坐标
 * @param       y:y轴坐标
 * @retval      无
 */
void lcd_color_detection_camera(uint16_t x, uint16_t y)
{
    if (xQueueReceive(xQueueAIFrameO, &face_ai_frameO, portMAX_DELAY))
    {
        lcd_set_window(x, y, x + face_ai_frameO->width - 1, y + face_ai_frameO->height - 1);

        if (x + face_ai_frameO->width > lcd_self.width || y + face_ai_frameO->height > lcd_self.height)
        {
            printf("图像超过显示区域，请设置x轴与y轴坐标！！！\r\n");
            goto err;
        }

        /* lcd_buf存储摄像头整一帧RGB数据 */
        for (x_j = 0; x_j < face_ai_frameO->width * face_ai_frameO->height; x_j++)
        {
            lcd_buf[2 * x_j] = (face_ai_frameO->buf[2 * x_i]);
            lcd_buf[2 * x_j + 1] = (face_ai_frameO->buf[2 * x_i + 1]);
            x_i++;
        }

        /* 例如：96*96*2/1536 = 12;分12次发送RGB数据 */
        for (x_j = 0; x_j < (face_ai_frameO->width * face_ai_frameO->height * 2 / LCD_BUF_SIZE); x_j++)
        {
            /* &lcd_buf[j * LCD_BUF_SIZE] 偏移地址发送数据 */
            lcd_write_data(&lcd_buf[x_j * LCD_BUF_SIZE], LCD_BUF_SIZE);
        }
    err:
        esp_camera_fb_return(face_ai_frameO);
        x_i = 0;
        face_ai_frameO = NULL;
    }
}

/**
 * @brief       程序入口
 * @param       无
 * @retval      无
 */
void app_main(void)
{
    uint8_t x = 0;
    esp_err_t ret;

    ret = nvs_flash_init(); /* 初始化NVS */

    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND)
    {
        ESP_ERROR_CHECK(nvs_flash_erase());
        ret = nvs_flash_init();
    }

    led_init();                        /* 初始化LED */
    i2c0_master = iic_init(I2C_NUM_0); /* 初始化IIC0 */
    spi2_init();                       /* 初始化SPI2 */
    xl9555_init(i2c0_master);          /* IO扩展芯片初始化 */
    lcd_init();                        /* 初始化LCD */

    lcd_show_string(30, 50, 200, 16, 16, "ESP32", RED);
    lcd_show_string(30, 70, 200, 16, 16, "COLOR DETECTION TEST", RED);
    lcd_show_string(30, 90, 200, 16, 16, "ATOM@ALIENTEK", RED);

    /* 初始化摄像头 */
    while (camera_init())
    {
        lcd_show_string(30, 110, 200, 16, 16, "CAMERA Fail!", BLUE);
        vTaskDelay(500);
    }

    lcd_clear(BLACK);

    /* 创建AI所需的内存及任务 */
    while (esp_color_detection_ai_strat())
    {
        lcd_show_string(30, 110, 200, 16, 16, "Create Task/Queue Fail!", BLUE);
        /* 删除AI所需的内存及任务 */
        esp_color_detection_ai_deinit();
        vTaskDelay(500);
    }

    while (1)
    {
        /* 处理图像 */
        lcd_color_detection_camera(42, 0);

        x++;

        if (x % 20 == 0)
        {
            LED_TOGGLE();
        }

        vTaskDelay(1);
    }
}
