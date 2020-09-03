# glfw静态库编译
include config/*.mk
EXC_NAME := 05_transformation
$(EXC_NAME) : 
	$(CC) $(CXX_FLAGS) \
	$(SRC_DIR)/$(EXC_NAME).cpp \
	-I$(DEP_DIR) \
	-I$(UTILS_DIR) \
	-L$(LIB_MAC_DIR) -lglad -lglfw3 \
	-framework OpenGL -framework Cocoa -framework IOKit -framework CoreVideo \
	-o $(DES_MAC_DIR)/$@ 
	

.PHONY : clean
clean : 
	-rm -rf $(DES_MAC_DIR)/$@