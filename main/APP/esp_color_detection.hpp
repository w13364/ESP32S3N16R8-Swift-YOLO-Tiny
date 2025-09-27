/**
 ****************************************************************************************************
 * @file        esp_color_detection.hpp
 * @author      正点原子团队(ALIENTEK)
 * @version     V1.0
 * @date        2023-12-01
 * @brief       颜色识别驱动
 * @license     Copyright (c) 2020-2032, 广州市星翼电子科技有限公司
 ****************************************************************************************************
 * @attention
 *
 * 实验平台:正点原子 ESP32-S3 开发板
 * 在线视频:www.yuanzige.com
 * 技术论坛:www.openedv.com
 * 公司网址:www.alientek.com
 * 购买地址:openedv.taobao.com
 *
 ****************************************************************************************************
 */

#ifndef __ESP_COLOR_DETECTION_H
#define __ESP_COLOR_DETECTION_H

#include "esp_camera.h"
#include "esp_log.h"
#include "freertos/FreeRTOS.h"
#include "freertos/queue.h"
#include "freertos/task.h"
#include "freertos/semphr.h"


#ifdef __cplusplus
extern "C" {
#endif

#define RGB565_LCD_RED      0x00F8
#define RGB565_LCD_ORANGE   0x20FD
#define RGB565_LCD_YELLOW   0xE0FF
#define RGB565_LCD_GREEN    0xE007
#define RGB565_LCD_CYAN     0xFF07
#define RGB565_LCD_BLUE     0x1F00
#define RGB565_LCD_PURPLE   0x1EA1
#define RGB565_LCD_WHITE    0xFFFF
#define RGB565_LCD_GRAY     0x1084
#define RGB565_LCD_BLACK    0x0000

#define RGB565_MASK_RED         0xF800
#define RGB565_MASK_GREEN       0x07E0
#define RGB565_MASK_BLUE        0x001F
#define FRAME_DELAY_NUM         16

extern QueueHandle_t xQueueAIFrameO;

/* 函数声明 */
uint8_t esp_color_detection_ai_strat(void);
void esp_color_detection_ai_deinit(void);

#ifdef __cplusplus
}
#endif

#endif
