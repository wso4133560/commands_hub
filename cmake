# 添加make的打印信息
-DCMAKE_VERBOSE_MAKEFILE=ON
# 编译是否带有调试信息的宏
-DCMAKE_BUILD_TYPE=[Debug|Release]

# 去除默认内联
-DCMAKE_C_FLAGS="-fno-inline-functions" -DCMAKE_CXX_FLAGS="-fno-inline-functions" 

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
