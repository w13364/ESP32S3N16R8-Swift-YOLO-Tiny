idf_component_register(
    SRC_DIRS 
        "."
        "app"
    INCLUDE_DIRS 
        "."
        "app"
    REQUIRES 
        modules 
        esp-dl
        BSP
        nvs_flash

    )