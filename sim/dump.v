module dump();





`ifdef  DUMP
initial begin

#44_000_000 

//wait (tb.finance_v2_top.u_own_top.u_sub_top.u_mirp_out_top.u_mdqp_mem_ctrl.mirp_sn_enable);

//wait ( tb.u_tx_sys.tcp_frame_cnt[31:0]==32'd53200 );  //53287

$fsdbAutoSwitchDumpfile(1000,"mac.fsdb",100);
//$fsdbDumpvars(0,tb);
//
$fsdbDumpoff;

//$fsdbDumpvars(0,tb.tx_mon);
//$fsdbDumpvars(1,tb.wrapper_filter_rx_top.filter_rx_top);
//$fsdbDumpvars(1,tb.wrapper_filter_rx_top.filter_rx_top.filter_rx_fsm);
$fsdbDumpvars(0,tb);

//$fsdbDumpvars(0,tb.finance_v2_top.u_own_top.u_sub_top.mirp_dout_mux);

//$fsdbDumpvars(0,tb.finance_v2_top.u_pcie_interface_transfer);


//$fsdbDumpvars(0,tb.tx_mon);

//$fsdbDumpvars(0);
$fsdbDumpon;
//wait ( tb.tx_sys.tcp_frame_cnt[31:0]==32'd15000 );
//
//#1000_000_000 ;
#10_000_000 ;


// #1200_000 

$finish ;

end

`endif






endmodule






