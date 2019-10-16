cmake_minimum_required(VERSION 2.8)

project(dts)

add_definitions(-std=c++11)

aux_source_directory(. DIR_SRCS)

add_executable(bybit ${DIR_SRCS})

find_package(Threads REQUIRED) 

link_libraries(pthread)

link_libraries(ssl)
link_libraries(curl)
link_libraries(z)
link_libraries(crypto)

add_subdirectory(BybitGateway)


target_link_libraries(bybit BybitGateway)
target_link_libraries(bybit Threads::Threads)