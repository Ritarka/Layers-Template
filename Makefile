AUTOPILOT_ROOT := /tools/software/xilinx/Vitis_HLS/2022.1
ASSEMBLE_SRC_ROOT := .

IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${ASSEMBLE_SRC_ROOT}"
IFLAG += -I "/usr/include/x86_64-linux-gnu"
IFLAG += -I "./layer1"
IFLAG += -I "./layer2"
IFLAG += -I "./layer3"


##IFLAG +=  -g -DCSIM_DEBUG

CFLAG += -fPIC -O3 -std=c++11 -mcmodel=large
CC      = g++ 

ALLOUT+= csim.out

all: IFLAG +=  -g -DCSIM_DEBUG
all: $(ALLOUT) 

debug: IFLAG += -g -DCSIM_DEBUG -DPRINT_DEBUG
debug: csim.out

hls_sim: IFLAG += -g
hls_sim: csim.out

hls_debug: IFLAG += -g -DPRINT_DEBUG
hls_debug: csim.out


tb_utils.o:./tb/tb_utils.cpp
	$(CC) $(GCOV)  $(CFLAG)  -o $@ -c $^    -MMD $(IFLAG)
layer_top.o:./layer_top.cpp
	$(CC) $(GCOV)  $(CFLAG)  -o $@ -c $^    -MMD $(IFLAG)


# layer1.o:
# 	$(MAKE) -C layer1/

layer1.o:./layer1/layer1.cpp
	$(CC) $(GCOV)  $(CFLAG)  -o $@ -c $^    -MMD $(IFLAG)
layer1.utils.o:./layer1/utils.cpp
	$(CC) $(GCOV)  $(CFLAG)  -o $@ -c $^    -MMD $(IFLAG)

layer2.o:./layer2/layer2.cpp
	$(CC) $(GCOV)  $(CFLAG)  -o $@ -c $^    -MMD $(IFLAG)
layer2.utils.o:./layer2/utils.cpp
	$(CC) $(GCOV)  $(CFLAG)  -o $@ -c $^    -MMD $(IFLAG)


layer3.o:./layer3/layer3.cpp
	$(CC) $(GCOV)  $(CFLAG)  -o $@ -c $^    -MMD $(IFLAG)
layer3.utils.o:./layer3/utils.cpp
	$(CC) $(GCOV)  $(CFLAG)  -o $@ -c $^    -MMD $(IFLAG)





IP_DEP+=tb_utils.o
IP_DEP+=layer_top.o

IP_DEP+=layer1.o
IP_DEP+=layer1.utils.o

IP_DEP+=layer2.o
IP_DEP+=layer2.utils.o

IP_DEP+=layer3.o
IP_DEP+=layer3.utils.o




main.o:./tb/tb_resnet.cpp
	$(CC) $(GCOV)  $(CFLAG)  -I "${ASSEMBLE_SRC_ROOT}" -o $@  -c $^   -MMD $(IFLAG)

csim.out: main.o $(IP_DEP)
	-$(CC)  $(GCOV)  $(CFLAG) -MMD $(IFLAG)  -o $@  $^ && ./csim.out
	@$(MAKE) -s clean

synth:
	vitis_hls script.tcl

clean:
	rm -f -r csim.d 
	rm -f *.gcno *.gcda *.txt *.o *.d
#rm -rf proj/
	rm -rf *.log

# smth:
# 	g++ -E layer_top.cpp -I "."  -MMD -I "/tools/software/xilinx/Vitis_HLS/2022.1/include" -I "." -I "/usr/include/x86_64-linux-gnu" -I "./layer1" > layer_top.pre.cpp
# 	g++ -E utils.cpp -I "."  -MMD -I "/tools/software/xilinx/Vitis_HLS/2022.1/include" -I "." -I "/usr/include/x86_64-linux-gnu" -I "./layer1" > utils.pre.cpp
# 	g++ -E layer1/layer1.cpp -I "."  -MMD -I "/tools/software/xilinx/Vitis_HLS/2022.1/include" -I "." -I "/usr/include/x86_64-linux-gnu" -I "./layer1" > layer1_layer1.pre.cpp
# 	g++ -E layer1/utils.cpp -I "."  -MMD -I "/tools/software/xilinx/Vitis_HLS/2022.1/include" -I "." -I "/usr/include/x86_64-linux-gnu" -I "./layer1" > layer1_utils.pre.cpp
# 	g++ *.pre.cpp -fPIC -O3 -std=c++11 -mcmodel=large -I "."  -MMD -I "/tools/software/xilinx/Vitis_HLS/2022.1/include" -I "." -I "/usr/include/x86_64-linux-gnu" -I "./layer1"

