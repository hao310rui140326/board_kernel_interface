module tb (/*AUTOARG*/
   // Outputs
   sw_reset_export_reset_n, kernel_reset_reset_n,
   kernel_irq_to_host_irq, kernel_cra_writedata, kernel_cra_write,
   kernel_cra_read, kernel_cra_debugaccess, kernel_cra_byteenable,
   kernel_cra_burstcount, kernel_cra_address, ctrl_waitrequest,
   ctrl_readdatavalid, ctrl_readdata, clk_320, clk_160,
   acl_bsp_memorg_host0x018_mode,
   // Inputs
   kernel_irq_from_kernel_irq, kernel_cra_waitrequest,
   kernel_cra_readdatavalid, kernel_cra_readdata, ctrl_writedata,
   ctrl_write, ctrl_read, ctrl_debugaccess, ctrl_byteenable,
   ctrl_burstcount, ctrl_address
   );


/*AUTOOUTPUT*/
// Beginning of automatic outputs (from unused autoinst outputs)
output [1:0]		acl_bsp_memorg_host0x018_mode;// From board_kernel_interface of board_kernel_interface.v
output			clk_160;		// From u_clk_gen of clk_gen.v
output			clk_320;		// From u_clk_gen of clk_gen.v
output [31:0]		ctrl_readdata;		// From board_kernel_interface of board_kernel_interface.v
output			ctrl_readdatavalid;	// From board_kernel_interface of board_kernel_interface.v
output			ctrl_waitrequest;	// From board_kernel_interface of board_kernel_interface.v
output [29:0]		kernel_cra_address;	// From board_kernel_interface of board_kernel_interface.v
output [0:0]		kernel_cra_burstcount;	// From board_kernel_interface of board_kernel_interface.v
output [7:0]		kernel_cra_byteenable;	// From board_kernel_interface of board_kernel_interface.v
output			kernel_cra_debugaccess;	// From board_kernel_interface of board_kernel_interface.v
output			kernel_cra_read;	// From board_kernel_interface of board_kernel_interface.v
output			kernel_cra_write;	// From board_kernel_interface of board_kernel_interface.v
output [63:0]		kernel_cra_writedata;	// From board_kernel_interface of board_kernel_interface.v
output			kernel_irq_to_host_irq;	// From board_kernel_interface of board_kernel_interface.v
output			kernel_reset_reset_n;	// From board_kernel_interface of board_kernel_interface.v
output			sw_reset_export_reset_n;// From board_kernel_interface of board_kernel_interface.v
// End of automatics
/*AUTOINPUT*/
// Beginning of automatic inputs (from unused autoinst inputs)
input [13:0]		ctrl_address;		// To board_kernel_interface of board_kernel_interface.v
input [0:0]		ctrl_burstcount;	// To board_kernel_interface of board_kernel_interface.v
input [3:0]		ctrl_byteenable;	// To board_kernel_interface of board_kernel_interface.v
input			ctrl_debugaccess;	// To board_kernel_interface of board_kernel_interface.v
input			ctrl_read;		// To board_kernel_interface of board_kernel_interface.v
input			ctrl_write;		// To board_kernel_interface of board_kernel_interface.v
input [31:0]		ctrl_writedata;		// To board_kernel_interface of board_kernel_interface.v
input [63:0]		kernel_cra_readdata;	// To board_kernel_interface of board_kernel_interface.v
input			kernel_cra_readdatavalid;// To board_kernel_interface of board_kernel_interface.v
input			kernel_cra_waitrequest;	// To board_kernel_interface of board_kernel_interface.v
input [0:0]		kernel_irq_from_kernel_irq;// To board_kernel_interface of board_kernel_interface.v
// End of automatics
/*AUTOWIRE*/
// Beginning of automatic wires (for undeclared instantiated-module outputs)
wire			clk;			// From u_clk_gen of clk_gen.v
wire			rst_n;			// From u_rst_gen of rst_gen.v
// End of automatics


reg   [31:0]		st_rx_data_dly    ;		// From u_tx_sys of tx_sys.v
reg   [ 1:0]		st_rx_empty_dly   ;		// From u_tx_sys of tx_sys.v
reg  			st_rx_end_dly     ;		// From u_tx_sys of tx_sys.v
reg  			st_rx_start_dly   ;		// From u_tx_sys of tx_sys.v
reg  			st_rx_vld_dly     ;		// From u_tx_sys of tx_sys.v

/*board_kernel_interface   AUTO_TEMPLATE(
    .clk_clk(clk),
    .kernel_clk_clk(clk),
    .reset_reset_n(rst_n),
    .sw_reset_in_reset(~rst_n),
);*/


clk_gen   u_clk_gen (/*AUTOINST*/
		     // Outputs
		     .clk		(clk),
		     .clk_160		(clk_160),
		     .clk_320		(clk_320));
rst_gen   u_rst_gen (/*AUTOINST*/
		     // Outputs
		     .rst_n		(rst_n));



dump dump();
//tx_mon tx_mon();



board_kernel_interface  board_kernel_interface(/*AUTOINST*/
					       // Outputs
					       .kernel_cra_burstcount(kernel_cra_burstcount[0:0]),
					       .kernel_cra_writedata(kernel_cra_writedata[63:0]),
					       .kernel_cra_address(kernel_cra_address[29:0]),
					       .kernel_cra_write(kernel_cra_write),
					       .kernel_cra_read	(kernel_cra_read),
					       .kernel_cra_byteenable(kernel_cra_byteenable[7:0]),
					       .kernel_cra_debugaccess(kernel_cra_debugaccess),
					       .ctrl_waitrequest(ctrl_waitrequest),
					       .ctrl_readdata	(ctrl_readdata[31:0]),
					       .ctrl_readdatavalid(ctrl_readdatavalid),
					       .acl_bsp_memorg_host0x018_mode(acl_bsp_memorg_host0x018_mode[1:0]),
					       .kernel_irq_to_host_irq(kernel_irq_to_host_irq),
					       .kernel_reset_reset_n(kernel_reset_reset_n),
					       .sw_reset_export_reset_n(sw_reset_export_reset_n),
					       // Inputs
					       .kernel_cra_waitrequest(kernel_cra_waitrequest),
					       .kernel_cra_readdata(kernel_cra_readdata[63:0]),
					       .kernel_cra_readdatavalid(kernel_cra_readdatavalid),
					       .ctrl_burstcount	(ctrl_burstcount[0:0]),
					       .ctrl_writedata	(ctrl_writedata[31:0]),
					       .ctrl_address	(ctrl_address[13:0]),
					       .ctrl_write	(ctrl_write),
					       .ctrl_read	(ctrl_read),
					       .ctrl_byteenable	(ctrl_byteenable[3:0]),
					       .ctrl_debugaccess(ctrl_debugaccess),
					       .clk_clk		(clk),		 // Templated
					       .reset_reset_n	(rst_n),	 // Templated
					       .kernel_irq_from_kernel_irq(kernel_irq_from_kernel_irq[0:0]),
					       .sw_reset_in_reset(~rst_n),	 // Templated
					       .kernel_clk_clk	(clk));		 // Templated






endmodule


