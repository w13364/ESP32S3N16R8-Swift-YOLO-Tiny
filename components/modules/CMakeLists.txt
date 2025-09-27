# set(src_dirs    
#                 model
#                 algorithm
#                 fb_gfx
#                 esp-nn
#                 tflite-lib
#                 utils)

# set(include_dirs    
#                 model
#                 algorithm
#                 fb_gfx
#                 esp-nn
#                 tflite-lib
#                 utils)

# set(requires    esp32-camera
#                 #bus
#                 #screen
#                 #fb_gfx
#                 #tflite-lib
#                 esp_timer
#                 )

# idf_component_register(SRC_DIRS ${src_dirs} INCLUDE_DIRS ${include_dirs} REQUIRES ${requires})

# component_compile_options(-ffast-math -O3)


set(src_dirs 
                model
                algorithm
                utils)

set(include_dirs 
                    model
                    algorithm
                    utils)

set(requires    esp32-camera
                fb_gfx
                tflite-lib
                esp_timer

                esp-nn
                
                )

idf_component_register(SRC_DIRS ${src_dirs} INCLUDE_DIRS ${include_dirs} REQUIRES ${requires})

component_compile_options(-ffast-math -O3)


