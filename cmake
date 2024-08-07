# 添加make的打印信息
-DCMAKE_VERBOSE_MAKEFILE=ON
# 编译是否带有调试信息的宏
-DCMAKE_BUILD_TYPE=[Debug|Release]

# 去除默认内联
-DCMAKE_C_FLAGS="-fno-inline-functions" -DCMAKE_CXX_FLAGS="-fno-inline-functions" 

# c++ flags
-DCMAKE_CXX_FLAGS=""

# 多核编译
cmake [编译参数] -- -j[核心数]

# 交叉编译工具链
-DTOOLCHAIN_PATH=[gnu库的路径]

# 交叉编译工具
-DCMAKE_C_COMPILER=[交叉编译器c的路径]
-DCMAKE_CXX_COMPILER=[交叉编译器c的路径]

# 目标机器的指令
-DCMAKE_SYSTEM_PROCESSOR=[架构例如mips64]

# 交叉编译的文件
-DCMAKE_TOOLCHAIN_FILE=[文件路径]

# 指定clang编译
CC=clang CXX=clang++ cmake [后续参数]

CMAKE_BUILD_TYPE	对应的c编译选项变量	对应的c++编译选项变量
None	          CMAKE_C_FLAGS	CMAKE_CXX_FLAGS
Debug	          CMAKE_C_FLAGS_DEBUG	CMAKE_CXX_FLAGS_DEBUG                       -O0 -g
Release	        CMAKE_C_FLAGS_RELEASE	CMAKE_CXX_FLAGS_RELEASE                   -O3
RelWithDebInfo	CMAKE_C_FLAGS_RELWITHDEBINFO	CMAKE_CXX_FLAGS_RELWITHDEBINFO    -O2 -g
MinSizeRel	    CMAKE_C_FLAGS_MINSIZEREL	CMAKE_CXX_FLAGS_MINSIZEREL            -Os

# 打印宏信息
message("CMAKE_CURRENT_DIR = ${CMAKE_CURRENT_DIR}")

# 执行外部命令
execute_process(COMMAND ls .. OUTPUT_VARIABLE ls_ret)
message(STATUS "ls output:\n${ls_ret}")

# DEFINED的宏的用法和信息
if(DEFINED LIBCXX_INCLUDE)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -I${LIBCXX_INCLUDE} -Wl,-rpath,${LIBCXX_INCLUDE}")
else()
  message(FATAL_ERROR "no LIBCXX_INCLUDE")
endif()

set(ENV{PATH} /home/test)

# cmake /dev/null失效的情况
sudo systemctl stop apparmor.service
sudo systemctl disable apparmor.service
sudo reboot

# 查看linux是否安装这个包
find_package([包名] REQUIRED)

# 查看linux是否安装某命令
find_program(COMMAND_PATH bison)

# 查找是否有某个库
find_library(PCAP_LIBRARY NAMES pcap)
find_path(PCAP_INCLUDE_DIR NAMES pcap.h)

# 当前处理CMakeLists.txt的路径
${CMAKE_CURRENT_LIST_DIR}

# 添加链接路径
link_directories(/path/to/library)

# 使用llvm-config获取正确路径的位置的示例
execute_process(
    COMMAND llvm-config --includedir
    OUTPUT_VARIABLE LLVM_INCLUDEDIR
    OUTPUT_STRIP_TRAILING_WHITESPACE
)

# cmake生成编译参数的变量
-DCMAKE_EXPORT_COMPILE_COMMANDS=ON

# 指定项目安装路径
-DCMAKE_INSTALL_PREFIX=[path]
