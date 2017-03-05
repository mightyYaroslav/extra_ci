cmake_minimum_required(VERSION 3.6)
project(extra_ci)

set(CMAKE_C_STANDARD 99)

set(SOURCE_FILES list.c list.h university.c university.h)

include_directories(/usr/local/include)
link_libraries(/usr/local/lib/libcheck.a)
add_library(${PROJECT_NAME} ${SOURCE_FILES})
target_link_libraries(${PROJECT_NAME} /usr/local/lib/libcheck.a)


#project(exec)
#set(CMAKE_C_STANDARD 99)
#add_executable(${PROJECT_NAME} "main.c" ${SOURCE_FILES})
#target_link_libraries(${PROJECT_NAME} /usr/local/lib/libcheck.a)

