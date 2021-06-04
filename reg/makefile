#*************************************************************************//
#Inspur Confidential
#Copyright 2019 Inspur Corporation, System of FPGA Cloud Acceleration Stack
#
#Model Name: makefile
#Created by haorui
#Description
#       1.auto connection of modules
#Revision
#	Version			Auther			Date		Description
#	0.1			zhangjd			20200811	creat module  
#***************************************************************************//


default:
	emacs   --batch   MFUNC_TOP.sv        	-f verilog-auto     -f save-buffer 
	emacs   --batch   CFG_TOP.sv        		-f verilog-auto     -f save-buffer 
	emacs   --batch   CFG_TOP_WRAPPER.sv        		-f verilog-auto     -f save-buffer 
verdi:
	##source /home/haorui/.bashrc_2015
	verdi -sv -f files.vc &
