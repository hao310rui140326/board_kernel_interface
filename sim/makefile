
DUMP=NONE
MODE=INTEL
MY_IP=MY_IP
LOG1=MIRP_ERROR
LOG2=NONE
LOG3=NONE
LONG=NONE
CASE=NONE



##MODE=MODE1
##MODE=MODE2
QUARTUS_INSTALL_DIR=/opt/intelFPGA_pro/17.1/quartus


vcs_run:
	echo "\`define  $(DUMP)       "  >   define.v
	echo "\`define  $(MODE)       "  >>  define.v
	echo "\`define  $(MY_IP)      "  >>  define.v
	echo "\`define  $(LOG1)       "  >>  define.v
	echo "\`define  $(LOG2)       "  >>  define.v
	echo "\`define  $(LOG3)       "  >>  define.v
	echo "\`define  $(LONG)       "  >>  define.v
	echo "\`define  $(CASE)       "  >>  define.v
	vcs -full64 -lca -timescale=1ns/1ps  -P  /usr/synopsys/Verdi3_L-2016.06-1/share/PLI/VCS/LINUX64/novas.tab   /usr/synopsys/Verdi3_L-2016.06-1/share/PLI/VCS/LINUX64/pli.a +vcs+lic+wait   -sverilog +verilog2001ext+.v    -debug_all   -f tb.vc -top tb    -cm line+cond+fsm+tgl -cm_dir cov_result/my_cov_info_$(MODE)    -l vcs_com.log
	./simv -debug_all    -cm line+cond+fsm+tgl -cm_dir cov_result/my_cov_info_$(MODE)      -l vcs_sim_$(MODE).log 




default :
	echo "\`define  $(DUMP)       "  >   define.v
	echo "\`define  $(MODE)       "  >>  define.v
	echo "\`define  $(MY_IP)      "  >>  define.v
	echo "\`define  $(LOG1)       "  >>  define.v
	echo "\`define  $(LOG2)       "  >>  define.v
	echo "\`define  $(LOG3)       "  >>  define.v
	echo "\`define  $(LONG)       "  >>  define.v
	echo "\`define  $(CASE)       "  >>  define.v
	vcs -lca -timescale=1ns/1ps  -P  /tools/novas/Novas201101/share/PLI/VCS/LINUX/novas.tab   /tools/novas/Novas201101/share/PLI/VCS/LINUX/pli.a +vcs+lic+wait   -sverilog +verilog2001ext+.v    -debug_all   -f tb.vc -top tb    -cm line+cond+fsm+tgl -cm_dir cov_result/my_cov_info_$(MODE)    -l vcs_com.log
	./simv -debug_all    -cm line+cond+fsm+tgl -cm_dir cov_result/my_cov_info_$(MODE)      -l vcs_sim_$(MODE).log 
##	urg -dir     cov_result/my_cov_info_$(MODE)    -metric line+cond+fsm+tgl -report cov_report/report_$(MODE)   -format both
##	mv fpga_output.txt  fpga_output_$(MODE).txt
	

clean:
	rm -rf simv*  tb.v~  verdiLog novas*
	rm -rf csrc*


auto_emacs:
	cp  ../../f10a_bsp_191_cloud_enhance_v2_qp_st/hardware/f10a_sr2x8g/ip/board/board_kernel_interface/synth/board_kernel_interface.v  ./
	emacs   --batch   rst_gen.v             -f verilog-auto     -f save-buffer 	
	emacs   --batch   clk_gen.v             -f verilog-auto     -f save-buffer 
	emacs   --batch   tb.v             -f verilog-auto     -f save-buffer 	
	rm   ./board_kernel_interface.v



verdi:
	##source /home/haorui/.bashrc_2015
	verdi -sv -f tb.vc &


com:
	echo "\`define  $(DUMP)       "  >   define.v
	echo "\`define  $(MODE)       "  >>  define.v
	mkdir -p ./altera_lib/func_lib/
	mkdir -p ./altera_lib/work/
	mkdir -p ./altera_lib/altera_fp_functions_171/
	mkdir -p ./altera_lib/float_add/
	mkdir -p ./altera_lib/float_mult_add/
	mkdir -p ./altera_lib/fix2float/
	mkdir -p ./altera_lib/top/
	mkdir -p ./altera_lib/altera_ver/
	mkdir -p ./altera_lib/lpm_ver/
	mkdir -p ./altera_lib/sgate_ver/
	mkdir -p ./altera_lib/altera_mf_ver/
	mkdir -p ./altera_lib/altera_lnsim_ver/
	mkdir -p ./altera_lib/twentynm_ver/
	mkdir -p ./altera_lib/twentynm_hssi_ver/
	mkdir -p ./altera_lib/twentynm_hip_ver/
	mkdir -p ./altera_lib/altera/
	mkdir -p ./altera_lib/lpm/
	mkdir -p ./altera_lib/sgate/
	mkdir -p ./altera_lib/altera_mf/
	mkdir -p ./altera_lib/altera_lnsim/
	mkdir -p ./altera_lib/twentynm/
	mkdir -p ./altera_lib/twentynm_hssi/
	mkdir -p ./altera_lib/twentynm_hip/
	vlogan -full64  -kdb +v2k             "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/altera_primitives.v"                   -work altera_ver       
	vlogan -full64  -kdb +v2k             "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/220model.v"                            -work lpm_ver          
	vlogan -full64  -kdb +v2k             "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/sgate.v"                               -work sgate_ver        
	vlogan -full64  -kdb +v2k             "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/altera_mf.v"                           -work altera_mf_ver    
	vlogan -full64  -kdb +v2k -sverilog   "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/altera_lnsim.sv"                       -work altera_lnsim_ver 
	vlogan -full64  -kdb +v2k             "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/twentynm_atoms.v"                      -work twentynm_ver     
	vlogan -full64  -kdb +v2k             "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/synopsys/twentynm_atoms_ncrypt.v"      -work twentynm_ver     
	vlogan -full64  -kdb +v2k             "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/synopsys/twentynm_hssi_atoms_ncrypt.v" -work twentynm_hssi_ver
	vlogan -full64  -kdb +v2k             "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/twentynm_hssi_atoms.v"                 -work twentynm_hssi_ver
	vlogan -full64  -kdb +v2k             "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/synopsys/twentynm_hip_atoms_ncrypt.v"  -work twentynm_hip_ver 
	vlogan -full64  -kdb +v2k             "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/twentynm_hip_atoms.v"                  -work twentynm_hip_ver 
	vhdlan -full64  -kdb                  "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/altera_syn_attributes.vhd"             -work altera           
	vhdlan -full64  -kdb                  "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/altera_standard_functions.vhd"         -work altera           
	vhdlan -full64  -kdb                  "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/alt_dspbuilder_package.vhd"            -work altera           
	vhdlan -full64  -kdb                  "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/altera_europa_support_lib.vhd"         -work altera           
	vhdlan -full64  -kdb                  "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/altera_primitives_components.vhd"      -work altera           
	vhdlan -full64  -kdb                  "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/altera_primitives.vhd"                 -work altera           
	vhdlan -full64  -kdb                  "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/220pack.vhd"                           -work lpm              
	vhdlan -full64  -kdb                  "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/220model.vhd"                          -work lpm              
	vhdlan -full64  -kdb                  "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/sgate_pack.vhd"                        -work sgate            
	vhdlan -full64  -kdb                  "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/sgate.vhd"                             -work sgate            
	vhdlan -full64  -kdb                  "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/altera_mf_components.vhd"              -work altera_mf        
	vhdlan -full64  -kdb                  "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/altera_mf.vhd"                         -work altera_mf        
	vlogan -full64  -kdb +v2k -sverilog   "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/altera_lnsim.sv"                       -work altera_lnsim     
	vhdlan -full64  -kdb                  "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/altera_lnsim_components.vhd"           -work altera_lnsim     
	vlogan -full64  -kdb +v2k             "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/synopsys/twentynm_atoms_ncrypt.v"      -work twentynm         
	vhdlan -full64  -kdb                  "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/twentynm_atoms.vhd"                    -work twentynm         
	vhdlan -full64  -kdb                  "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/twentynm_components.vhd"               -work twentynm         
	vlogan -full64  -kdb +v2k             "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/synopsys/twentynm_hssi_atoms_ncrypt.v" -work twentynm_hssi    
	vhdlan -full64  -kdb                  "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/twentynm_hssi_components.vhd"          -work twentynm_hssi    
	vhdlan -full64  -kdb                  "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/twentynm_hssi_atoms.vhd"               -work twentynm_hssi    
	vlogan -full64  -kdb +v2k             "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/synopsys/twentynm_hip_atoms_ncrypt.v"  -work twentynm_hip     
	vhdlan -full64  -kdb                  "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/twentynm_hip_components.vhd"           -work twentynm_hip     
	vhdlan -full64  -kdb                  "$(QUARTUS_INSTALL_DIR)/eda/sim_lib/twentynm_hip_atoms.vhd"                -work twentynm_hip     
	vhdlan -full64  -kdb  -xlrm "../../fpga/ip/intel/float_mult_add/altera_fp_functions_171/sim/dspba_library_package.vhd" -work func_lib
	vhdlan -full64  -kdb  -xlrm "../../fpga/ip/intel/float_mult_add/altera_fp_functions_171/sim/dspba_library.vhd" -work func_lib
	vhdlan -full64  -kdb  -xlrm "../../fpga/ip/intel/float_mult_add/altera_fp_functions_171/sim/float_mult_add_altera_fp_functions_171_3ghd5ia.vhd" -work func_lib
	vhdlan -full64  -kdb  -xlrm "../../fpga/ip/intel/fix2float/altera_fp_functions_171/sim/fix2float_altera_fp_functions_171_fiqck7i.vhd" -work func_lib
	vhdlan -full64  -kdb  -xlrm "../../fpga/ip/intel/float_add/altera_fp_functions_171/sim/float_add_altera_fp_functions_171_4ttgs2a.vhd" -work func_lib
	vlogan -full64  -kdb +v2k  "../../fpga/ip/intel/float_add/synth/float_add.v"     -work float_add
	vlogan -full64  -kdb +v2k  "../../fpga/ip/intel/fix2float/synth/fix2float.v"     -work fix2float
	vlogan -full64  -kdb +v2k  "../../fpga/ip/intel/float_mult_add/synth/float_mult_add.v"     -work float_mult_add
	vlogan -full64  -override_timescale=1ns/1ps   -kdb +v2k   -f tb.vc    -work top	
vcs_mix_run:
	vcs -full64 -kdb -lca -timescale=1ns/1ps   -P  /usr/synopsys/K-2015.09-SP1-1/share/PLI/VCS/LINUX64/novas.tab   /usr/synopsys/K-2015.09-SP1-1/share/PLI/VCS/LINUX64/pli.a        +vcs+lic+wait      -debug_all   -top tb     -l vcs_com.log
##	vcs -lca -timescale=1ns/1ps  -P  /tools/novas/Novas201101/share/PLI/VCS/LINUX/novas.tab   /tools/novas/Novas201101/share/PLI/VCS/LINUX/pli.a +vcs+lic+wait      -debug_all   -top tb    -cm line+cond+fsm+tgl -cm_dir cov_result/my_cov_info_$(MODE)    -l vcs_com.log
	./simv -debug_all    -cm line+cond+fsm+tgl -cm_dir cov_result/my_cov_info_$(MODE)      -l vcs_sim_$(MODE).log 
##	urg -dir     cov_result/my_cov_info_$(MODE)    -metric line+cond+fsm+tgl -report cov_report/report_$(MODE)   -format both
##	mv fpga_output.txt  fpga_output_$(MODE).txt
	







