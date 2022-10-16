set(EXAMPLE_CONFIG_FILES
        "${PROJECT_SOURCE_DIR}/config/vsomeip.json"
        "${PROJECT_SOURCE_DIR}/config/vsomeip-local.json"
        "${PROJECT_SOURCE_DIR}/config/vsomeip-tcp-client.json"
        "${PROJECT_SOURCE_DIR}/config/vsomeip-tcp-service.json"
        "${PROJECT_SOURCE_DIR}/config/vsomeip-udp-client.json"
        "${PROJECT_SOURCE_DIR}/config/vsomeip-udp-service.json")

set(DL_LIBRARY "dl")

find_package(vsomeip3 REQUIRED)
find_package(Threads REQUIRED)
find_package(Boost COMPONENTS system thread filesystem REQUIRED)

include_directories(${Boost_INCLUDE_DIR} ${VSOMEIP_INCLUDE_DIRS})

add_executable(request-sample request-sample.cpp ${EXAMPLE_CONFIG_FILES})
target_link_libraries(request-sample vsomeip3 ${Boost_LIBRARIES} ${DL_LIBRARY})

add_executable(response-sample response-sample.cpp ${EXAMPLE_CONFIG_FILES})
target_link_libraries(response-sample vsomeip3 ${Boost_LIBRARIES} ${DL_LIBRARY})

add_executable(subscribe-sample subscribe-sample.cpp ${EXAMPLE_CONFIG_FILES})
target_link_libraries(subscribe-sample vsomeip3 ${Boost_LIBRARIES} ${DL_LIBRARY})

add_executable(notify-sample notify-sample.cpp ${EXAMPLE_CONFIG_FILES})
target_link_libraries(notify-sample vsomeip3 ${Boost_LIBRARIES} ${DL_LIBRARY})


add_library(vsomeip_hello_world_service INTERFACE)
target_sources(vsomeip_hello_world_service INTERFACE
        "${CMAKE_CURRENT_SOURCE_DIR}/hello_world_service.hpp")
target_include_directories(vsomeip_hello_world_service INTERFACE
        "${CMAKE_CURRENT_SOURCE_DIR}")

add_library(vsomeip_hello_world_client INTERFACE)
target_sources(vsomeip_hello_world_client INTERFACE
        "${CMAKE_CURRENT_SOURCE_DIR}/hello_world_client.hpp")
target_include_directories(vsomeip_hello_world_client INTERFACE
        "${CMAKE_CURRENT_SOURCE_DIR}")

add_executable (hello_world_service hello_world_service_main.cpp)
target_link_libraries(hello_world_service vsomeip_hello_world_service vsomeip3 ${CMAKE_THREAD_LIBS_INIT})

add_executable (hello_world_client hello_world_client_main.cpp)
target_link_libraries(hello_world_client vsomeip_hello_world_client vsomeip3 ${CMAKE_THREAD_LIBS_INIT})

install(TARGETS
        request-sample response-sample subscribe-sample notify-sample hello_world_service hello_world_client
        RUNTIME DESTINATION ${PROJECT_SOURCE_DIR}/install)