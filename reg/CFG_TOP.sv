module CFG_TOP ( /*AUTOARG*/
   // Outputs
   rt_mem_wren, rt_mem_wdata_m, rt_mem_wdata_l, rt_mem_wdata_h,
   rt_mem_addr, reg_wait_request, reg_rd_data_vld, reg_rd_data,
   params_tx_dly_cnt, params_test_period, params_test,
   params_st_enable_out_chan, params_st_enable_in_chan,
   params_reg_ack_cnt, params_rdma_wait_cnt, params_protocol_rst,
   params_mode_sel, params_mm_rst, params_mdma_switch,
   params_mac_rst_en, params_mac_rst, params_kernel_st_rst,
   params_kernel_irq_on, params_kernel_irq_cycle_on,
   params_kernel_irq_cfg, params_iter_time_cnt, params_iter_off,
   params_irq_ack_cnt, params_force_mac_addrl, params_force_mac_addrh,
   params_force_mac_addr_en, params_force_chipidl,
   params_force_chipidh, params_force_chipid_en,
   params_force_chip_ip_en, params_force_chip_ip,
   params_dsp_rst_delay, params_dsp_rst, params_dhcp_start,
   params_burst_type, params_board_id, params_all_rst, kernel_irq_id,
   host_id, eth_tx_enable, eth_rx_enable, dma_des_edge_addr_l,
   dma_des_edge_addr_h, dma_des_base_addr_l, dma_des_base_addr_h,
   bypass_host_filter, params_trans_start, set_qp_enable,
   params_trans_saddr_l, params_trans_saddr_h, params_trans_daddr_l,
   params_trans_daddr_h, params_trans_data_len, params_trans_sid_reg,
   params_trans_did_reg, params_qp, set_period_ack,
   params_rq_trans_ssid, params_trans_req_type, params_trans_seq,
   params_trans_qp, params_trans_blknum, params_trans_cmdtype,
   params_st_payload_max_size, params_st_credit_updata_period,
   params_st_pkt_len, params_st_sti_fifo_deep_min,
   params_st_unload_timer_tc,
   // Inputs
   rt_mem_rdata_m, rt_mem_rdata_l, rt_mem_rdata_h, rst_n, reg_wr_en,
   reg_wr_data, reg_rd_en, reg_byte_enable, reg_addr,
   params_version_num_ro, params_version_date_ro,
   params_kernel_irq_ro, params_kernel_irq_cnt_ro,
   params_iter_time_out_ro, params_dfifo_full_ro,
   params_data_fsm_erro_cnt, params_data_cfifo_overflow_cnt,
   params_chip_mac_addrl_ro, params_chip_mac_addrh_ro,
   params_chip_ip_ro, params_chip_ip_done_ro, params_chip_id_l_ro,
   params_chip_id_h_ro, param_drop_pkt_count_l,
   param_drop_pkt_count_h, param_crc_err_count_l,
   param_crc_err_count_h, kernel_reg_latence_cnt, eth_tx_fifo_full,
   drop_pkt_cnt, clk, seq_err_cnt, dbg_seq_num, params_fct_latence,
   params_test_pkts_tatol, params_test_pps, params_test_thoughput,
   params_test_thrp_max, params_sti_data_cnt, params_sto_data_cnt
   );
/*AUTOINPUT*/
// Beginning of automatic inputs (from unused autoinst inputs)
input			clk;			// To u_CFG_MUX of CFG_MUX.v, ...
input [31:0]		drop_pkt_cnt;		// To u_MFUNC_TOP of MFUNC_TOP.v
input			eth_tx_fifo_full;	// To u_MFUNC_TOP of MFUNC_TOP.v
input [31:0]		kernel_reg_latence_cnt;	// To u_MFUNC_TOP of MFUNC_TOP.v
input [31:0]		param_crc_err_count_h;	// To u_MFUNC_TOP of MFUNC_TOP.v
input [31:0]		param_crc_err_count_l;	// To u_MFUNC_TOP of MFUNC_TOP.v
input [31:0]		param_drop_pkt_count_h;	// To u_MFUNC_TOP of MFUNC_TOP.v
input [31:0]		param_drop_pkt_count_l;	// To u_MFUNC_TOP of MFUNC_TOP.v
input [31:0]		params_chip_id_h_ro;	// To u_MFUNC_TOP of MFUNC_TOP.v
input [31:0]		params_chip_id_l_ro;	// To u_MFUNC_TOP of MFUNC_TOP.v
input [7:0]		params_chip_ip_done_ro;	// To u_MFUNC_TOP of MFUNC_TOP.v
input [31:0]		params_chip_ip_ro;	// To u_MFUNC_TOP of MFUNC_TOP.v
input [15:0]		params_chip_mac_addrh_ro;// To u_MFUNC_TOP of MFUNC_TOP.v
input [31:0]		params_chip_mac_addrl_ro;// To u_MFUNC_TOP of MFUNC_TOP.v
input [31:0]		params_data_cfifo_overflow_cnt;// To u_MFUNC_TOP of MFUNC_TOP.v
input [31:0]		params_data_fsm_erro_cnt;// To u_MFUNC_TOP of MFUNC_TOP.v
input [4:0]		params_dfifo_full_ro;	// To u_MFUNC_TOP of MFUNC_TOP.v
input			params_iter_time_out_ro;// To u_MFUNC_TOP of MFUNC_TOP.v
input [15:0]		params_kernel_irq_cnt_ro;// To u_MFUNC_TOP of MFUNC_TOP.v
input			params_kernel_irq_ro;	// To u_MFUNC_TOP of MFUNC_TOP.v
input [31:0]		params_version_date_ro;	// To u_MFUNC_TOP of MFUNC_TOP.v
input [31:0]		params_version_num_ro;	// To u_MFUNC_TOP of MFUNC_TOP.v
input [13:0]		reg_addr;		// To u_CFG_MUX of CFG_MUX.v
input [3:0]		reg_byte_enable;	// To u_CFG_MUX of CFG_MUX.v
input			reg_rd_en;		// To u_CFG_MUX of CFG_MUX.v
input [31:0]		reg_wr_data;		// To u_MFUNC_TOP of MFUNC_TOP.v
input			reg_wr_en;		// To u_CFG_MUX of CFG_MUX.v
input			rst_n;			// To u_CFG_MUX of CFG_MUX.v, ...
input [15:0]		rt_mem_rdata_h;		// To u_MFUNC_TOP of MFUNC_TOP.v
input [31:0]		rt_mem_rdata_l;		// To u_MFUNC_TOP of MFUNC_TOP.v
input [31:0]		rt_mem_rdata_m;		// To u_MFUNC_TOP of MFUNC_TOP.v
// End of automatics
/*AUTOOUTPUT*/
// Beginning of automatic outputs (from unused autoinst outputs)
output			bypass_host_filter;	// From u_MFUNC_TOP of MFUNC_TOP.v
output [31:0]		dma_des_base_addr_h;	// From u_MFUNC_TOP of MFUNC_TOP.v
output [31:0]		dma_des_base_addr_l;	// From u_MFUNC_TOP of MFUNC_TOP.v
output [31:0]		dma_des_edge_addr_h;	// From u_MFUNC_TOP of MFUNC_TOP.v
output [31:0]		dma_des_edge_addr_l;	// From u_MFUNC_TOP of MFUNC_TOP.v
output			eth_rx_enable;		// From u_MFUNC_TOP of MFUNC_TOP.v
output			eth_tx_enable;		// From u_MFUNC_TOP of MFUNC_TOP.v
output [15:0]		host_id;		// From u_MFUNC_TOP of MFUNC_TOP.v
output [31:0]		kernel_irq_id;		// From u_MFUNC_TOP of MFUNC_TOP.v
output			params_all_rst;		// From u_MFUNC_TOP of MFUNC_TOP.v
output [15:0]		params_board_id;	// From u_MFUNC_TOP of MFUNC_TOP.v
output [4:0]		params_burst_type;	// From u_MFUNC_TOP of MFUNC_TOP.v
output			params_dhcp_start;	// From u_MFUNC_TOP of MFUNC_TOP.v
output			params_dsp_rst;		// From u_MFUNC_TOP of MFUNC_TOP.v
output [15:0]		params_dsp_rst_delay;	// From u_MFUNC_TOP of MFUNC_TOP.v
output [31:0]		params_force_chip_ip;	// From u_MFUNC_TOP of MFUNC_TOP.v
output			params_force_chip_ip_en;// From u_MFUNC_TOP of MFUNC_TOP.v
output			params_force_chipid_en;	// From u_MFUNC_TOP of MFUNC_TOP.v
output [31:0]		params_force_chipidh;	// From u_MFUNC_TOP of MFUNC_TOP.v
output [31:0]		params_force_chipidl;	// From u_MFUNC_TOP of MFUNC_TOP.v
output			params_force_mac_addr_en;// From u_MFUNC_TOP of MFUNC_TOP.v
output [15:0]		params_force_mac_addrh;	// From u_MFUNC_TOP of MFUNC_TOP.v
output [31:0]		params_force_mac_addrl;	// From u_MFUNC_TOP of MFUNC_TOP.v
output [31:0]		params_irq_ack_cnt;	// From u_MFUNC_TOP of MFUNC_TOP.v
output			params_iter_off;	// From u_MFUNC_TOP of MFUNC_TOP.v
output [7:0]		params_iter_time_cnt;	// From u_MFUNC_TOP of MFUNC_TOP.v
output			params_kernel_irq_cfg;	// From u_MFUNC_TOP of MFUNC_TOP.v
output			params_kernel_irq_cycle_on;// From u_MFUNC_TOP of MFUNC_TOP.v
output			params_kernel_irq_on;	// From u_MFUNC_TOP of MFUNC_TOP.v
output			params_kernel_st_rst;	// From u_MFUNC_TOP of MFUNC_TOP.v
output			params_mac_rst;		// From u_MFUNC_TOP of MFUNC_TOP.v
output			params_mac_rst_en;	// From u_MFUNC_TOP of MFUNC_TOP.v
output			params_mdma_switch;	// From u_MFUNC_TOP of MFUNC_TOP.v
output			params_mm_rst;		// From u_MFUNC_TOP of MFUNC_TOP.v
output [3:0]		params_mode_sel;	// From u_MFUNC_TOP of MFUNC_TOP.v
output			params_protocol_rst;	// From u_MFUNC_TOP of MFUNC_TOP.v
output [15:0]		params_rdma_wait_cnt;	// From u_MFUNC_TOP of MFUNC_TOP.v
output [31:0]		params_reg_ack_cnt;	// From u_MFUNC_TOP of MFUNC_TOP.v
output [3:0]		params_st_enable_in_chan;// From u_MFUNC_TOP of MFUNC_TOP.v
output [3:0]		params_st_enable_out_chan;// From u_MFUNC_TOP of MFUNC_TOP.v
output [31:0]		params_test;		// From u_MFUNC_TOP of MFUNC_TOP.v
output [31:0]		params_test_period;	// From u_MFUNC_TOP of MFUNC_TOP.v
output [31:0]		params_tx_dly_cnt;	// From u_MFUNC_TOP of MFUNC_TOP.v
output [31:0]		reg_rd_data;		// From u_CFG_MUX of CFG_MUX.v
output			reg_rd_data_vld;	// From u_CFG_MUX of CFG_MUX.v
output			reg_wait_request;	// From u_CFG_MUX of CFG_MUX.v
output [15:0]		rt_mem_addr;		// From u_MFUNC_TOP of MFUNC_TOP.v
output [15:0]		rt_mem_wdata_h;		// From u_MFUNC_TOP of MFUNC_TOP.v
output [31:0]		rt_mem_wdata_l;		// From u_MFUNC_TOP of MFUNC_TOP.v
output [31:0]		rt_mem_wdata_m;		// From u_MFUNC_TOP of MFUNC_TOP.v
output			rt_mem_wren;		// From u_MFUNC_TOP of MFUNC_TOP.v
// End of automatics
output	[3:0]		params_trans_start;	// From u_MFUNC_TOP of MFUNC_TOP.voutput			params_trans_start;	// From u_MFUNC_TOP of MFUNC_TOP.v
output	[3:0]		set_qp_enable;		// From u_MFUNC_TOP of MFUNC_TOP.v
output  [31:0]   params_trans_saddr_l[3:0];
output  [31:0]   params_trans_saddr_h[3:0];
output  [31:0]   params_trans_daddr_l[3:0];
output  [31:0]   params_trans_daddr_h[3:0];
output  [31:0]   params_trans_data_len[3:0];
output  [15:0]   params_trans_sid_reg[3:0];
output  [15:0]   params_trans_did_reg[3:0];
output  [15:0]   params_qp[3:0];
output  [31:0]   set_period_ack[3:0];
input   [31:0]    seq_err_cnt[3:0];
input   [31:0]    dbg_seq_num[3:0];
output  [15:0]   params_rq_trans_ssid[3:0];
output  [15:0]   params_trans_req_type[3:0];
output  [31:0]   params_trans_seq[3:0];
output  [15:0]   params_trans_qp[3:0];
output  [15:0]   params_trans_blknum[3:0];
output  [15:0]   params_trans_cmdtype[3:0];
input   [31:0]    params_fct_latence[3:0];
input   [31:0]    params_test_pkts_tatol[3:0];
input   [31:0]    params_test_pps[3:0];
input   [31:0]    params_test_thoughput[3:0];
input   [31:0]    params_test_thrp_max[3:0];
output [31:0]		params_st_payload_max_size[3:0];
output [31:0]		params_st_credit_updata_period[3:0];
output [31:0]		params_st_pkt_len[3:0];
output [31:0]		params_st_sti_fifo_deep_min[3:0];
output [31:0]		params_st_unload_timer_tc[3:0];
input [31:0]		params_sti_data_cnt[3:0];// To u_MFUNC_TOP of MFUNC_TOP.v
input [31:0]		params_sto_data_cnt[3:0];// To u_MFUNC_TOP of MFUNC_TOP.v







/*AUTOWIRE*/
// Beginning of automatic wires (for undeclared instantiated-module outputs)
wire [31:0]		reg_MFUNC_TOP_rd_data;	// From u_MFUNC_TOP of MFUNC_TOP.v
wire			reg_MFUNC_TOP_wr_en;	// From u_CFG_MUX of CFG_MUX.v
wire [11:0]		sub_reg_addr;		// From u_CFG_MUX of CFG_MUX.v
// End of automatics
//


/*MFUNC_TOP AUTO_TEMPLATE(
 		.params_trans_start(params_trans_start[3:0]),
		.set_qp_enable(set_qp_enable[3:0]),
		.seq_err_cnt(seq_err_cnt),
	    .dbg_seq_num(dbg_seq_num),
		.params_qp(params_qp),
	      .params_trans_saddr_l(params_trans_saddr_l),
	      .params_trans_saddr_h(params_trans_saddr_h),
	      .params_trans_daddr_l(params_trans_daddr_l),
	      .params_trans_daddr_h(params_trans_daddr_h),
	      .params_trans_data_len(params_trans_data_len),
	      .params_trans_sid_reg(params_trans_sid_reg),
	      .params_trans_did_reg(params_trans_did_reg),
	      .set_period_ack(set_period_ack),
	      .params_rq_trans_ssid(params_rq_trans_ssid),
	      .params_trans_req_type(params_trans_req_type),
	      .params_trans_seq(params_trans_seq),
	      .params_trans_qp(params_trans_qp),
	      .params_trans_blknum(params_trans_blknum),
	      .params_trans_cmdtype(params_trans_cmdtype),
		  .params_fct_latence(params_fct_latence),
			.params_test_pkts_tatol(params_test_pkts_tatol),
			.params_test_pps(params_test_pps),
			.params_test_thoughput(params_test_thoughput),
			.params_test_thrp_max(params_test_thrp_max),
			.params_st_payload_max_size(params_st_payload_max_size),
		    .params_st_credit_updata_period(params_st_credit_updata_period),
		    .params_st_unload_timer_tc(params_st_unload_timer_tc),
		    .params_st_sti_fifo_deep_min(params_st_sti_fifo_deep_min),
		    .params_st_pkt_len(params_st_pkt_len),
			.params_sti_data_cnt(params_sti_data_cnt),
			.params_sto_data_cnt(params_sto_data_cnt), 
);*/









CFG_MUX u_CFG_MUX(/*AUTOINST*/
		  // Outputs
		  .reg_rd_data		(reg_rd_data[31:0]),
		  .reg_rd_data_vld	(reg_rd_data_vld),
		  .sub_reg_addr		(sub_reg_addr[11:0]),
		  .reg_wait_request	(reg_wait_request),
		  .reg_MFUNC_TOP_wr_en	(reg_MFUNC_TOP_wr_en),
		  // Inputs
		  .clk			(clk),
		  .rst_n		(rst_n),
		  .reg_wr_en		(reg_wr_en),
		  .reg_rd_en		(reg_rd_en),
		  .reg_byte_enable	(reg_byte_enable[3:0]),
		  .reg_addr		(reg_addr[13:0]),
		  .reg_MFUNC_TOP_rd_data(reg_MFUNC_TOP_rd_data[31:0]));
MFUNC_TOP u_MFUNC_TOP(/*AUTOINST*/
		      // Outputs
		      .reg_MFUNC_TOP_rd_data(reg_MFUNC_TOP_rd_data[31:0]),
		      .params_dsp_rst	(params_dsp_rst),
		      .params_mac_rst	(params_mac_rst),
		      .params_all_rst	(params_all_rst),
		      .params_mm_rst	(params_mm_rst),
		      .params_trans_start(params_trans_start[3:0]), // Templated
		      .params_burst_type(params_burst_type[4:0]),
		      .params_dsp_rst_delay(params_dsp_rst_delay[15:0]),
		      .params_rdma_wait_cnt(params_rdma_wait_cnt[15:0]),
		      .rt_mem_wren	(rt_mem_wren),
		      .params_tx_dly_cnt(params_tx_dly_cnt[31:0]),
		      .params_mdma_switch(params_mdma_switch),
		      .rt_mem_wdata_h	(rt_mem_wdata_h[15:0]),
		      .rt_mem_wdata_m	(rt_mem_wdata_m[31:0]),
		      .rt_mem_wdata_l	(rt_mem_wdata_l[31:0]),
		      .rt_mem_addr	(rt_mem_addr[15:0]),
		      .dma_des_base_addr_l(dma_des_base_addr_l[31:0]),
		      .dma_des_base_addr_h(dma_des_base_addr_h[31:0]),
		      .dma_des_edge_addr_l(dma_des_edge_addr_l[31:0]),
		      .dma_des_edge_addr_h(dma_des_edge_addr_h[31:0]),
		      .eth_rx_enable	(eth_rx_enable),
		      .eth_tx_enable	(eth_tx_enable),
		      .params_force_mac_addrl(params_force_mac_addrl[31:0]),
		      .params_force_mac_addrh(params_force_mac_addrh[15:0]),
		      .params_force_mac_addr_en(params_force_mac_addr_en),
		      .params_force_chipidl(params_force_chipidl[31:0]),
		      .params_force_chipidh(params_force_chipidh[31:0]),
		      .params_force_chipid_en(params_force_chipid_en),
		      .bypass_host_filter(bypass_host_filter),
		      .host_id		(host_id[15:0]),
		      .params_board_id	(params_board_id[15:0]),
		      .params_force_chip_ip(params_force_chip_ip[31:0]),
		      .params_force_chip_ip_en(params_force_chip_ip_en),
		      .params_protocol_rst(params_protocol_rst),
		      .params_dhcp_start(params_dhcp_start),
		      .kernel_irq_id	(kernel_irq_id[31:0]),
		      .params_kernel_irq_cfg(params_kernel_irq_cfg),
		      .params_kernel_irq_on(params_kernel_irq_on),
		      .params_kernel_irq_cycle_on(params_kernel_irq_cycle_on),
		      .params_irq_ack_cnt(params_irq_ack_cnt[31:0]),
		      .params_reg_ack_cnt(params_reg_ack_cnt[31:0]),
		      .params_test_period(params_test_period[31:0]),
		      .params_mode_sel	(params_mode_sel[3:0]),
		      .params_st_enable_in_chan(params_st_enable_in_chan[3:0]),
		      .params_st_enable_out_chan(params_st_enable_out_chan[3:0]),
		      .params_kernel_st_rst(params_kernel_st_rst),
		      .params_iter_off	(params_iter_off),
		      .params_iter_time_cnt(params_iter_time_cnt[7:0]),
		      .params_mac_rst_en(params_mac_rst_en),
		      .params_test	(params_test[31:0]),
		      .set_qp_enable	(set_qp_enable[3:0]),	 // Templated
		      .params_trans_saddr_l(params_trans_saddr_l), // Templated
		      .params_trans_saddr_h(params_trans_saddr_h), // Templated
		      .params_trans_daddr_l(params_trans_daddr_l), // Templated
		      .params_trans_daddr_h(params_trans_daddr_h), // Templated
		      .params_trans_data_len(params_trans_data_len), // Templated
		      .params_trans_sid_reg(params_trans_sid_reg), // Templated
		      .params_trans_did_reg(params_trans_did_reg), // Templated
		      .params_qp	(params_qp),		 // Templated
		      .set_period_ack	(set_period_ack),	 // Templated
		      .params_rq_trans_ssid(params_rq_trans_ssid), // Templated
		      .params_trans_req_type(params_trans_req_type), // Templated
		      .params_trans_seq	(params_trans_seq),	 // Templated
		      .params_trans_qp	(params_trans_qp),	 // Templated
		      .params_trans_blknum(params_trans_blknum), // Templated
		      .params_trans_cmdtype(params_trans_cmdtype), // Templated
		      .params_st_payload_max_size(params_st_payload_max_size), // Templated
		      .params_st_credit_updata_period(params_st_credit_updata_period), // Templated
		      .params_st_unload_timer_tc(params_st_unload_timer_tc), // Templated
		      .params_st_sti_fifo_deep_min(params_st_sti_fifo_deep_min), // Templated
		      .params_st_pkt_len(params_st_pkt_len),	 // Templated
		      // Inputs
		      .clk		(clk),
		      .rst_n		(rst_n),
		      .reg_MFUNC_TOP_wr_en(reg_MFUNC_TOP_wr_en),
		      .sub_reg_addr	(sub_reg_addr[11:0]),
		      .reg_wr_data	(reg_wr_data[31:0]),
		      .params_dfifo_full_ro(params_dfifo_full_ro[4:0]),
		      .params_chip_id_h_ro(params_chip_id_h_ro[31:0]),
		      .params_chip_id_l_ro(params_chip_id_l_ro[31:0]),
		      .params_chip_mac_addrl_ro(params_chip_mac_addrl_ro[31:0]),
		      .params_chip_mac_addrh_ro(params_chip_mac_addrh_ro[15:0]),
		      .rt_mem_rdata_h	(rt_mem_rdata_h[15:0]),
		      .rt_mem_rdata_m	(rt_mem_rdata_m[31:0]),
		      .rt_mem_rdata_l	(rt_mem_rdata_l[31:0]),
		      .drop_pkt_cnt	(drop_pkt_cnt[31:0]),
		      .eth_tx_fifo_full	(eth_tx_fifo_full),
		      .params_chip_ip_ro(params_chip_ip_ro[31:0]),
		      .params_chip_ip_done_ro(params_chip_ip_done_ro[7:0]),
		      .params_version_date_ro(params_version_date_ro[31:0]),
		      .params_version_num_ro(params_version_num_ro[31:0]),
		      .param_drop_pkt_count_l(param_drop_pkt_count_l[31:0]),
		      .param_drop_pkt_count_h(param_drop_pkt_count_h[31:0]),
		      .param_crc_err_count_l(param_crc_err_count_l[31:0]),
		      .param_crc_err_count_h(param_crc_err_count_h[31:0]),
		      .params_data_cfifo_overflow_cnt(params_data_cfifo_overflow_cnt[31:0]),
		      .params_data_fsm_erro_cnt(params_data_fsm_erro_cnt[31:0]),
		      .kernel_reg_latence_cnt(kernel_reg_latence_cnt[31:0]),
		      .params_iter_time_out_ro(params_iter_time_out_ro),
		      .params_kernel_irq_cnt_ro(params_kernel_irq_cnt_ro[15:0]),
		      .params_kernel_irq_ro(params_kernel_irq_ro),
		      .seq_err_cnt	(seq_err_cnt),		 // Templated
		      .dbg_seq_num	(dbg_seq_num),		 // Templated
		      .params_fct_latence(params_fct_latence),	 // Templated
		      .params_test_pkts_tatol(params_test_pkts_tatol), // Templated
		      .params_test_pps	(params_test_pps),	 // Templated
		      .params_test_thoughput(params_test_thoughput), // Templated
		      .params_test_thrp_max(params_test_thrp_max), // Templated
		      .params_sto_data_cnt(params_sto_data_cnt), // Templated
		      .params_sti_data_cnt(params_sti_data_cnt)); // Templated
endmodule
