# Install script for directory: B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/05_color_detection_project")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "B:/esp32/tools/tools/xtensa-esp32s3-elf/esp-12.2.0_20230208/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-objdump.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/aes.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/aria.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1write.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/base64.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/build_info.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/camellia.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ccm.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/chacha20.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/chachapoly.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/check_config.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/cmac.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/compat-2.x.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_psa.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/constant_time.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ctr_drbg.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/debug.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/des.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/dhm.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdh.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecjpake.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/entropy.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/error.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/gcm.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/hkdf.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/legacy_or_psa.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/lms.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/mbedtls_config.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md5.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/memory_buffer_alloc.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/net_sockets.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/nist_kw.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/oid.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pem.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pkcs12.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pkcs5.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pkcs7.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform_time.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform_util.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/poly1305.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/private_access.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/psa_util.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ripemd160.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha1.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha512.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_cache.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_ciphersuites.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_cookie.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_ticket.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/threading.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/timing.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/version.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_crl.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_crt.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_csr.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/psa" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/psa/crypto.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_builtin_composites.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_builtin_primitives.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_compat.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_config.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_common.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_composites.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_primitives.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_extra.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_platform.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_se_driver.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_sizes.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_struct.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_types.h"
    "B:/esp32/idf/v5.1/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_values.h"
    )
endif()

