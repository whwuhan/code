# glfw静态库编译
# 基础光照
include config/*.mk
EXC_NAME := 09_basic_lighting
$(EXC_NAME) : 
	$(CC) $(CXX_FLAGS) \
	$(SRC_DIR)/$(EXC_NAME).cpp \
	/Users/wuhan/wuhan/CodingSpace/Code/opengl/utils/src/Camera.cpp \
	-I$(DEP_DIR) \
	-I$(UTILS_INCLUDE_DIR) \
	-L$(LIB_MAC_DIR) -lglad -lglfw3 \
	-framework OpenGL -framework Cocoa -framework IOKit -framework CoreVideo \
	-o $(DES_MAC_DIR)/$@ 
	

.PHONY : clean
clean : 
	rm -rf $(DES_MAC_DIR)/$@