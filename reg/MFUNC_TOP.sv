module MFUNC_TOP ( /*AUTOARG*/
   // Outputs
   reg_MFUNC_TOP_rd_data, params_dsp_rst, params_mac_rst,
   params_all_rst, params_mm_rst, params_trans_start,
   params_burst_type, params_dsp_rst_delay, params_rdma_wait_cnt,
   rt_mem_wren, params_tx_dly_cnt, params_mdma_switch, rt_mem_wdata_h,
   rt_mem_wdata_m, rt_mem_wdata_l, rt_mem_addr, dma_des_base_addr_l,
   dma_des_base_addr_h, dma_des_edge_addr_l, dma_des_edge_addr_h,
   eth_rx_enable, eth_tx_enable, params_force_mac_addrl,
   params_force_mac_addrh, params_force_mac_addr_en,
   params_force_chipidl, params_force_chipidh, params_force_chipid_en,
   bypass_host_filter, host_id, params_board_id, params_force_chip_ip,
   params_force_chip_ip_en, params_protocol_rst, params_dhcp_start,
   kernel_irq_id, params_kernel_irq_cfg, params_kernel_irq_on,
   params_kernel_irq_cycle_on, params_irq_ack_cnt, params_reg_ack_cnt,
   params_test_period, params_mode_sel, params_st_enable_in_chan,
   params_st_enable_out_chan, params_kernel_st_rst, params_iter_off,
   params_iter_time_cnt, params_mac_rst_en, params_test,
   set_qp_enable, params_trans_saddr_l, params_trans_saddr_h,
   params_trans_daddr_l, params_trans_daddr_h, params_trans_data_len,
   params_trans_sid_reg, params_trans_did_reg, params_qp,
   set_period_ack, params_rq_trans_ssid, params_trans_req_type,
   params_trans_seq, params_trans_qp, params_trans_blknum,
   params_trans_cmdtype, params_st_payload_max_size,
   params_st_credit_updata_period, params_st_unload_timer_tc,
   params_st_sti_fifo_deep_min, params_st_pkt_len,
   // Inputs
   clk, rst_n, reg_MFUNC_TOP_wr_en, sub_reg_addr, reg_wr_data,
   params_dfifo_full_ro, params_chip_id_h_ro, params_chip_id_l_ro,
   params_chip_mac_addrl_ro, params_chip_mac_addrh_ro, rt_mem_rdata_h,
   rt_mem_rdata_m, rt_mem_rdata_l, drop_pkt_cnt, eth_tx_fifo_full,
   params_chip_ip_ro, params_chip_ip_done_ro, params_version_date_ro,
   params_version_num_ro, param_drop_pkt_count_l,
   param_drop_pkt_count_h, param_crc_err_count_l,
   param_crc_err_count_h, params_data_cfifo_overflow_cnt,
   params_data_fsm_erro_cnt, kernel_reg_latence_cnt,
   params_iter_time_out_ro, params_kernel_irq_cnt_ro,
   params_kernel_irq_ro, seq_err_cnt, dbg_seq_num, params_fct_latence,
   params_test_pkts_tatol, params_test_pps, params_test_thoughput,
   params_test_thrp_max, params_sto_data_cnt, params_sti_data_cnt
   );
input         clk;
input         rst_n;
input         reg_MFUNC_TOP_wr_en;
input  [11:0] sub_reg_addr;
input  [31:0] reg_wr_data;
output [31:0] reg_MFUNC_TOP_rd_data;
output           params_dsp_rst;
output           params_mac_rst;
output           params_all_rst;
output           params_mm_rst;
output  [3:0]   params_trans_start;
output  [4:0]   params_burst_type;
output  [15:0]   params_dsp_rst_delay;
input   [4:0]   params_dfifo_full_ro;
input   [31:0]   params_chip_id_h_ro;
input   [31:0]   params_chip_id_l_ro;
input   [31:0]   params_chip_mac_addrl_ro;
input   [15:0]   params_chip_mac_addrh_ro;
input   [15:0]   rt_mem_rdata_h;
input   [31:0]   rt_mem_rdata_m;
input   [31:0]   rt_mem_rdata_l;
output  [15:0]   params_rdma_wait_cnt;
output           rt_mem_wren;
output  [31:0]   params_tx_dly_cnt;
output           params_mdma_switch;
output  [15:0]   rt_mem_wdata_h;
output  [31:0]   rt_mem_wdata_m;
output  [31:0]   rt_mem_wdata_l;
output  [15:0]   rt_mem_addr;
output  [31:0]   dma_des_base_addr_l;
output  [31:0]   dma_des_base_addr_h;
output  [31:0]   dma_des_edge_addr_l;
output  [31:0]   dma_des_edge_addr_h;
input   [31:0]   drop_pkt_cnt;
output           eth_rx_enable;
output           eth_tx_enable;
input            eth_tx_fifo_full;
output  [31:0]   params_force_mac_addrl;
output  [15:0]   params_force_mac_addrh;
output           params_force_mac_addr_en;
output  [31:0]   params_force_chipidl;
output  [31:0]   params_force_chipidh;
output           params_force_chipid_en;
output           bypass_host_filter;
output  [15:0]   host_id;
output  [15:0]   params_board_id;
input   [31:0]   params_chip_ip_ro;
output  [31:0]   params_force_chip_ip;
output           params_force_chip_ip_en;
input   [7:0]   params_chip_ip_done_ro;
input   [31:0]   params_version_date_ro;
input   [31:0]   params_version_num_ro;
output           params_protocol_rst;
output           params_dhcp_start;
output  [31:0]   kernel_irq_id;
output           params_kernel_irq_cfg;
output           params_kernel_irq_on;
output           params_kernel_irq_cycle_on;
input   [31:0]   param_drop_pkt_count_l;
input   [31:0]   param_drop_pkt_count_h;
input   [31:0]   param_crc_err_count_l;
input   [31:0]   param_crc_err_count_h;
input   [31:0]   params_data_cfifo_overflow_cnt;
input   [31:0]   params_data_fsm_erro_cnt;
output  [31:0]   params_irq_ack_cnt;
output  [31:0]   params_reg_ack_cnt;
output  [31:0]   params_test_period;
input   [31:0]   kernel_reg_latence_cnt;
output  [3:0]   params_mode_sel;
output  [3:0]   params_st_enable_in_chan;
output  [3:0]   params_st_enable_out_chan;
output           params_kernel_st_rst;
output           params_iter_off;
output  [7:0]   params_iter_time_cnt;
input            params_iter_time_out_ro;
output           params_mac_rst_en;
input   [15:0]   params_kernel_irq_cnt_ro;
input            params_kernel_irq_ro;
output  [31:0]   params_test;
output  [3:0]   set_qp_enable;
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
output  [31:0]   params_st_payload_max_size[3:0];
output  [31:0]   params_st_credit_updata_period[3:0];
output  [31:0]   params_st_unload_timer_tc[3:0];
output  [31:0]   params_st_sti_fifo_deep_min[3:0];
output  [31:0]   params_st_pkt_len[3:0];
input   [31:0]    params_sto_data_cnt[3:0];
input   [31:0]    params_sti_data_cnt[3:0];
/////////////////////////////////////////////////////
reg  [31:0]   reg_MFUNC_TOP_rd_data;
reg           reg_000;
reg           reg_004;
reg           reg_008;
reg           reg_00c;
reg  [3:0]   reg_020;
reg  [4:0]   reg_024;
reg  [15:0]   reg_028;
reg  [4:0]   reg_02c;
reg  [31:0]   reg_030;
reg  [31:0]   reg_034;
reg  [31:0]   reg_038;
reg  [15:0]   reg_03c;
reg  [15:0]   reg_040;
reg  [31:0]   reg_044;
reg  [31:0]   reg_048;
reg  [15:0]   reg_04c;
reg           reg_050;
reg  [31:0]   reg_054;
reg           reg_058;
reg  [15:0]   reg_060;
reg  [31:0]   reg_064;
reg  [31:0]   reg_068;
reg  [15:0]   reg_06c;
reg  [31:0]   reg_070;
reg  [31:0]   reg_074;
reg  [31:0]   reg_078;
reg  [31:0]   reg_07c;
reg  [31:0]   reg_080;
reg           reg_084;
reg           reg_088;
reg           reg_08c;
reg  [31:0]   reg_090;
reg  [15:0]   reg_094;
reg           reg_098;
reg  [31:0]   reg_09c;
reg  [31:0]   reg_0a0;
reg           reg_0a4;
reg           reg_0a8;
reg  [15:0]   reg_0ac;
reg  [15:0]   reg_0b0;
reg  [31:0]   reg_0b4;
reg  [31:0]   reg_0b8;
reg           reg_0bc;
reg  [7:0]   reg_0c0;
reg  [31:0]   reg_0cc;
reg  [31:0]   reg_0d0;
reg           reg_0d4;
reg           reg_0d8;
reg  [31:0]   reg_0dc;
reg           reg_0e0;
reg           reg_0e4;
reg           reg_0e8;
reg  [31:0]   reg_0f0;
reg  [31:0]   reg_0f4;
reg  [31:0]   reg_0f8;
reg  [31:0]   reg_0fc;
reg  [31:0]   reg_100;
reg  [31:0]   reg_104;
reg  [31:0]   reg_108;
reg  [31:0]   reg_10C;
reg  [31:0]   reg_110;
reg  [31:0]   reg_114;
reg  [3:0]   reg_118;
reg  [3:0]   reg_11C;
reg  [3:0]   reg_120;
reg           reg_124;
reg           reg_128;
reg  [7:0]   reg_12c;
reg           reg_130;
reg           reg_134;
reg  [15:0]   reg_138;
reg           reg_13c;
reg  [31:0]   reg_1fc;
reg  [3:0]   reg_200;
reg  [31:0]   reg_800;
reg  [31:0]   reg_804;
reg  [31:0]   reg_808;
reg  [31:0]   reg_80C;
reg  [31:0]   reg_810;
reg  [15:0]   reg_814;
reg  [15:0]   reg_818;
reg  [15:0]   reg_81C;
reg  [31:0]   reg_820;
reg  [31:0]   reg_824;
reg  [31:0]   reg_828;
reg  [15:0]   reg_82C;
reg  [15:0]   reg_830;
reg  [31:0]   reg_834;
reg  [15:0]   reg_838;
reg  [15:0]   reg_83C;
reg  [15:0]   reg_840;
reg  [31:0]   reg_844;
reg  [31:0]   reg_848;
reg  [31:0]   reg_84c;
reg  [31:0]   reg_850;
reg  [31:0]   reg_854;
reg  [31:0]   reg_858;
reg  [31:0]   reg_85C;
reg  [31:0]   reg_860;
reg  [31:0]   reg_864;
reg  [31:0]   reg_868;
reg  [31:0]   reg_86C;
reg  [31:0]   reg_870;
reg  [31:0]   reg_900;
reg  [31:0]   reg_904;
reg  [31:0]   reg_908;
reg  [31:0]   reg_90C;
reg  [31:0]   reg_910;
reg  [15:0]   reg_914;
reg  [15:0]   reg_918;
reg  [15:0]   reg_91C;
reg  [31:0]   reg_920;
reg  [31:0]   reg_924;
reg  [31:0]   reg_928;
reg  [15:0]   reg_92C;
reg  [15:0]   reg_930;
reg  [31:0]   reg_934;
reg  [15:0]   reg_938;
reg  [15:0]   reg_93C;
reg  [15:0]   reg_940;
reg  [31:0]   reg_944;
reg  [31:0]   reg_948;
reg  [31:0]   reg_94c;
reg  [31:0]   reg_950;
reg  [31:0]   reg_954;
reg  [31:0]   reg_958;
reg  [31:0]   reg_95C;
reg  [31:0]   reg_960;
reg  [31:0]   reg_964;
reg  [31:0]   reg_968;
reg  [31:0]   reg_96C;
reg  [31:0]   reg_970;
reg  [31:0]   reg_a00;
reg  [31:0]   reg_a04;
reg  [31:0]   reg_a08;
reg  [31:0]   reg_a0C;
reg  [31:0]   reg_a10;
reg  [15:0]   reg_a14;
reg  [15:0]   reg_a18;
reg  [15:0]   reg_a1C;
reg  [31:0]   reg_a20;
reg  [31:0]   reg_a24;
reg  [31:0]   reg_a28;
reg  [15:0]   reg_a2C;
reg  [15:0]   reg_a30;
reg  [31:0]   reg_a34;
reg  [15:0]   reg_a38;
reg  [15:0]   reg_a3C;
reg  [15:0]   reg_a40;
reg  [31:0]   reg_a44;
reg  [31:0]   reg_a48;
reg  [31:0]   reg_a4c;
reg  [31:0]   reg_a50;
reg  [31:0]   reg_a54;
reg  [31:0]   reg_a58;
reg  [31:0]   reg_a5C;
reg  [31:0]   reg_a60;
reg  [31:0]   reg_a64;
reg  [31:0]   reg_a68;
reg  [31:0]   reg_a6C;
reg  [31:0]   reg_a70;
reg  [31:0]   reg_b00;
reg  [31:0]   reg_b04;
reg  [31:0]   reg_b08;
reg  [31:0]   reg_b0C;
reg  [31:0]   reg_b10;
reg  [15:0]   reg_b14;
reg  [15:0]   reg_b18;
reg  [15:0]   reg_b1C;
reg  [31:0]   reg_b20;
reg  [31:0]   reg_b24;
reg  [31:0]   reg_b28;
reg  [15:0]   reg_b2C;
reg  [15:0]   reg_b30;
reg  [31:0]   reg_b34;
reg  [15:0]   reg_b38;
reg  [15:0]   reg_b3C;
reg  [15:0]   reg_b40;
reg  [31:0]   reg_b44;
reg  [31:0]   reg_b48;
reg  [31:0]   reg_b4c;
reg  [31:0]   reg_b50;
reg  [31:0]   reg_b54;
reg  [31:0]   reg_b58;
reg  [31:0]   reg_b5C;
reg  [31:0]   reg_b60;
reg  [31:0]   reg_b64;
reg  [31:0]   reg_b68;
reg  [31:0]   reg_b6C;
reg  [31:0]   reg_b70;
wire          wr_000_en;
wire          wr_004_en;
wire          wr_008_en;
wire          wr_00c_en;
wire          wr_020_en;
wire          wr_024_en;
wire          wr_028_en;
wire          wr_02c_en;
wire          wr_030_en;
wire          wr_034_en;
wire          wr_038_en;
wire          wr_03c_en;
wire          wr_040_en;
wire          wr_044_en;
wire          wr_048_en;
wire          wr_04c_en;
wire          wr_050_en;
wire          wr_054_en;
wire          wr_058_en;
wire          wr_060_en;
wire          wr_064_en;
wire          wr_068_en;
wire          wr_06c_en;
wire          wr_070_en;
wire          wr_074_en;
wire          wr_078_en;
wire          wr_07c_en;
wire          wr_080_en;
wire          wr_084_en;
wire          wr_088_en;
wire          wr_08c_en;
wire          wr_090_en;
wire          wr_094_en;
wire          wr_098_en;
wire          wr_09c_en;
wire          wr_0a0_en;
wire          wr_0a4_en;
wire          wr_0a8_en;
wire          wr_0ac_en;
wire          wr_0b0_en;
wire          wr_0b4_en;
wire          wr_0b8_en;
wire          wr_0bc_en;
wire          wr_0c0_en;
wire          wr_0cc_en;
wire          wr_0d0_en;
wire          wr_0d4_en;
wire          wr_0d8_en;
wire          wr_0dc_en;
wire          wr_0e0_en;
wire          wr_0e4_en;
wire          wr_0e8_en;
wire          wr_0f0_en;
wire          wr_0f4_en;
wire          wr_0f8_en;
wire          wr_0fc_en;
wire          wr_100_en;
wire          wr_104_en;
wire          wr_108_en;
wire          wr_10C_en;
wire          wr_110_en;
wire          wr_114_en;
wire          wr_118_en;
wire          wr_11C_en;
wire          wr_120_en;
wire          wr_124_en;
wire          wr_128_en;
wire          wr_12c_en;
wire          wr_130_en;
wire          wr_134_en;
wire          wr_138_en;
wire          wr_13c_en;
wire          wr_1fc_en;
wire          wr_200_en;
wire          wr_800_en;
wire          wr_804_en;
wire          wr_808_en;
wire          wr_80C_en;
wire          wr_810_en;
wire          wr_814_en;
wire          wr_818_en;
wire          wr_81C_en;
wire          wr_820_en;
wire          wr_824_en;
wire          wr_828_en;
wire          wr_82C_en;
wire          wr_830_en;
wire          wr_834_en;
wire          wr_838_en;
wire          wr_83C_en;
wire          wr_840_en;
wire          wr_844_en;
wire          wr_848_en;
wire          wr_84c_en;
wire          wr_850_en;
wire          wr_854_en;
wire          wr_858_en;
wire          wr_85C_en;
wire          wr_860_en;
wire          wr_864_en;
wire          wr_868_en;
wire          wr_86C_en;
wire          wr_870_en;
wire          wr_900_en;
wire          wr_904_en;
wire          wr_908_en;
wire          wr_90C_en;
wire          wr_910_en;
wire          wr_914_en;
wire          wr_918_en;
wire          wr_91C_en;
wire          wr_920_en;
wire          wr_924_en;
wire          wr_928_en;
wire          wr_92C_en;
wire          wr_930_en;
wire          wr_934_en;
wire          wr_938_en;
wire          wr_93C_en;
wire          wr_940_en;
wire          wr_944_en;
wire          wr_948_en;
wire          wr_94c_en;
wire          wr_950_en;
wire          wr_954_en;
wire          wr_958_en;
wire          wr_95C_en;
wire          wr_960_en;
wire          wr_964_en;
wire          wr_968_en;
wire          wr_96C_en;
wire          wr_970_en;
wire          wr_a00_en;
wire          wr_a04_en;
wire          wr_a08_en;
wire          wr_a0C_en;
wire          wr_a10_en;
wire          wr_a14_en;
wire          wr_a18_en;
wire          wr_a1C_en;
wire          wr_a20_en;
wire          wr_a24_en;
wire          wr_a28_en;
wire          wr_a2C_en;
wire          wr_a30_en;
wire          wr_a34_en;
wire          wr_a38_en;
wire          wr_a3C_en;
wire          wr_a40_en;
wire          wr_a44_en;
wire          wr_a48_en;
wire          wr_a4c_en;
wire          wr_a50_en;
wire          wr_a54_en;
wire          wr_a58_en;
wire          wr_a5C_en;
wire          wr_a60_en;
wire          wr_a64_en;
wire          wr_a68_en;
wire          wr_a6C_en;
wire          wr_a70_en;
wire          wr_b00_en;
wire          wr_b04_en;
wire          wr_b08_en;
wire          wr_b0C_en;
wire          wr_b10_en;
wire          wr_b14_en;
wire          wr_b18_en;
wire          wr_b1C_en;
wire          wr_b20_en;
wire          wr_b24_en;
wire          wr_b28_en;
wire          wr_b2C_en;
wire          wr_b30_en;
wire          wr_b34_en;
wire          wr_b38_en;
wire          wr_b3C_en;
wire          wr_b40_en;
wire          wr_b44_en;
wire          wr_b48_en;
wire          wr_b4c_en;
wire          wr_b50_en;
wire          wr_b54_en;
wire          wr_b58_en;
wire          wr_b5C_en;
wire          wr_b60_en;
wire          wr_b64_en;
wire          wr_b68_en;
wire          wr_b6C_en;
wire          wr_b70_en;
assign          wr_000_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h000));
assign          wr_004_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h004));
assign          wr_008_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h008));
assign          wr_00c_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h00c));
assign          wr_020_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h020));
assign          wr_024_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h024));
assign          wr_028_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h028));
assign          wr_02c_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h02c));
assign          wr_030_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h030));
assign          wr_034_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h034));
assign          wr_038_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h038));
assign          wr_03c_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h03c));
assign          wr_040_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h040));
assign          wr_044_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h044));
assign          wr_048_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h048));
assign          wr_04c_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h04c));
assign          wr_050_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h050));
assign          wr_054_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h054));
assign          wr_058_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h058));
assign          wr_060_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h060));
assign          wr_064_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h064));
assign          wr_068_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h068));
assign          wr_06c_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h06c));
assign          wr_070_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h070));
assign          wr_074_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h074));
assign          wr_078_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h078));
assign          wr_07c_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h07c));
assign          wr_080_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h080));
assign          wr_084_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h084));
assign          wr_088_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h088));
assign          wr_08c_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h08c));
assign          wr_090_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h090));
assign          wr_094_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h094));
assign          wr_098_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h098));
assign          wr_09c_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h09c));
assign          wr_0a0_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h0a0));
assign          wr_0a4_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h0a4));
assign          wr_0a8_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h0a8));
assign          wr_0ac_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h0ac));
assign          wr_0b0_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h0b0));
assign          wr_0b4_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h0b4));
assign          wr_0b8_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h0b8));
assign          wr_0bc_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h0bc));
assign          wr_0c0_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h0c0));
assign          wr_0cc_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h0cc));
assign          wr_0d0_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h0d0));
assign          wr_0d4_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h0d4));
assign          wr_0d8_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h0d8));
assign          wr_0dc_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h0dc));
assign          wr_0e0_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h0e0));
assign          wr_0e4_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h0e4));
assign          wr_0e8_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h0e8));
assign          wr_0f0_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h0f0));
assign          wr_0f4_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h0f4));
assign          wr_0f8_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h0f8));
assign          wr_0fc_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h0fc));
assign          wr_100_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h100));
assign          wr_104_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h104));
assign          wr_108_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h108));
assign          wr_10C_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h10C));
assign          wr_110_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h110));
assign          wr_114_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h114));
assign          wr_118_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h118));
assign          wr_11C_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h11C));
assign          wr_120_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h120));
assign          wr_124_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h124));
assign          wr_128_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h128));
assign          wr_12c_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h12c));
assign          wr_130_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h130));
assign          wr_134_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h134));
assign          wr_138_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h138));
assign          wr_13c_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h13c));
assign          wr_1fc_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h1fc));
assign          wr_200_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h200));
assign          wr_800_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h800));
assign          wr_804_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h804));
assign          wr_808_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h808));
assign          wr_80C_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h80C));
assign          wr_810_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h810));
assign          wr_814_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h814));
assign          wr_818_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h818));
assign          wr_81C_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h81C));
assign          wr_820_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h820));
assign          wr_824_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h824));
assign          wr_828_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h828));
assign          wr_82C_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h82C));
assign          wr_830_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h830));
assign          wr_834_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h834));
assign          wr_838_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h838));
assign          wr_83C_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h83C));
assign          wr_840_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h840));
assign          wr_844_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h844));
assign          wr_848_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h848));
assign          wr_84c_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h84c));
assign          wr_850_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h850));
assign          wr_854_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h854));
assign          wr_858_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h858));
assign          wr_85C_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h85C));
assign          wr_860_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h860));
assign          wr_864_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h864));
assign          wr_868_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h868));
assign          wr_86C_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h86C));
assign          wr_870_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h870));
assign          wr_900_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h900));
assign          wr_904_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h904));
assign          wr_908_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h908));
assign          wr_90C_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h90C));
assign          wr_910_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h910));
assign          wr_914_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h914));
assign          wr_918_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h918));
assign          wr_91C_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h91C));
assign          wr_920_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h920));
assign          wr_924_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h924));
assign          wr_928_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h928));
assign          wr_92C_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h92C));
assign          wr_930_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h930));
assign          wr_934_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h934));
assign          wr_938_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h938));
assign          wr_93C_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h93C));
assign          wr_940_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h940));
assign          wr_944_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h944));
assign          wr_948_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h948));
assign          wr_94c_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h94c));
assign          wr_950_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h950));
assign          wr_954_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h954));
assign          wr_958_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h958));
assign          wr_95C_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h95C));
assign          wr_960_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h960));
assign          wr_964_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h964));
assign          wr_968_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h968));
assign          wr_96C_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h96C));
assign          wr_970_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'h970));
assign          wr_a00_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha00));
assign          wr_a04_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha04));
assign          wr_a08_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha08));
assign          wr_a0C_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha0C));
assign          wr_a10_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha10));
assign          wr_a14_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha14));
assign          wr_a18_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha18));
assign          wr_a1C_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha1C));
assign          wr_a20_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha20));
assign          wr_a24_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha24));
assign          wr_a28_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha28));
assign          wr_a2C_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha2C));
assign          wr_a30_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha30));
assign          wr_a34_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha34));
assign          wr_a38_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha38));
assign          wr_a3C_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha3C));
assign          wr_a40_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha40));
assign          wr_a44_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha44));
assign          wr_a48_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha48));
assign          wr_a4c_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha4c));
assign          wr_a50_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha50));
assign          wr_a54_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha54));
assign          wr_a58_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha58));
assign          wr_a5C_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha5C));
assign          wr_a60_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha60));
assign          wr_a64_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha64));
assign          wr_a68_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha68));
assign          wr_a6C_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha6C));
assign          wr_a70_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'ha70));
assign          wr_b00_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb00));
assign          wr_b04_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb04));
assign          wr_b08_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb08));
assign          wr_b0C_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb0C));
assign          wr_b10_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb10));
assign          wr_b14_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb14));
assign          wr_b18_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb18));
assign          wr_b1C_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb1C));
assign          wr_b20_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb20));
assign          wr_b24_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb24));
assign          wr_b28_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb28));
assign          wr_b2C_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb2C));
assign          wr_b30_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb30));
assign          wr_b34_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb34));
assign          wr_b38_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb38));
assign          wr_b3C_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb3C));
assign          wr_b40_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb40));
assign          wr_b44_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb44));
assign          wr_b48_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb48));
assign          wr_b4c_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb4c));
assign          wr_b50_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb50));
assign          wr_b54_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb54));
assign          wr_b58_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb58));
assign          wr_b5C_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb5C));
assign          wr_b60_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb60));
assign          wr_b64_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb64));
assign          wr_b68_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb68));
assign          wr_b6C_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb6C));
assign          wr_b70_en=(reg_MFUNC_TOP_wr_en&&(sub_reg_addr==12'hb70));
/////////////////////////////////////////////////////
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_000<=1'b1;
    end
    else if (wr_000_en) begin
       reg_000<=reg_wr_data;
    end
    else begin
       reg_000<='d0;
    end
end
assign  params_dsp_rst=reg_000;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_004<=1'b0;
    end
    else if (wr_004_en) begin
       reg_004<=reg_wr_data;
    end
    else begin
       reg_004<='d0;
    end
end
assign  params_mac_rst=reg_004;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_008<=1'b0;
    end
    else if (wr_008_en) begin
       reg_008<=reg_wr_data;
    end
    else begin
       reg_008<='d0;
    end
end
assign  params_all_rst=reg_008;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_00c<=1'b0;
    end
    else if (wr_00c_en) begin
       reg_00c<=reg_wr_data;
    end
    else begin
       reg_00c<='d0;
    end
end
assign  params_mm_rst=reg_00c;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_020<=4'h0;
    end
    else if (wr_020_en) begin
       reg_020<=reg_wr_data;
    end
    else begin
       reg_020<='d0;
    end
end
assign  params_trans_start=reg_020;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_024<=5'h10;
    end
    else if (wr_024_en) begin
       reg_024<=reg_wr_data;
    end
end
assign  params_burst_type=reg_024;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_028<=16'hff;
    end
    else if (wr_028_en) begin
       reg_028<=reg_wr_data;
    end
end
assign  params_dsp_rst_delay=reg_028;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_02c<=5'h00;
    end
    else  begin
       reg_02c<=params_dfifo_full_ro;
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_030<=32'd0;
    end
    else  begin
       reg_030<=params_chip_id_h_ro;
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_034<=32'd0;
    end
    else  begin
       reg_034<=params_chip_id_l_ro;
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_038<=32'd0;
    end
    else  begin
       reg_038<=params_chip_mac_addrl_ro;
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_03c<=16'd0;
    end
    else  begin
       reg_03c<=params_chip_mac_addrh_ro;
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_040<=16'h0000_0000;
    end
    else  begin
       reg_040<=rt_mem_rdata_h;
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_044<=32'h0000_0000;
    end
    else  begin
       reg_044<=rt_mem_rdata_m;
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_048<=32'h0000_0000;
    end
    else  begin
       reg_048<=rt_mem_rdata_l;
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_04c<=16'h0010;
    end
    else if (wr_04c_en) begin
       reg_04c<=reg_wr_data;
    end
end
assign  params_rdma_wait_cnt=reg_04c;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_050<=1'b0;
    end
    else if (wr_050_en) begin
       reg_050<=reg_wr_data;
    end
    else begin
       reg_050<='d0;
    end
end
assign  rt_mem_wren=reg_050;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_054<=32'h0000;
    end
    else if (wr_054_en) begin
       reg_054<=reg_wr_data;
    end
end
assign  params_tx_dly_cnt=reg_054;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_058<=1'b1;
    end
    else if (wr_058_en) begin
       reg_058<=reg_wr_data;
    end
end
assign  params_mdma_switch=reg_058;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_060<=16'h0000;
    end
    else if (wr_060_en) begin
       reg_060<=reg_wr_data;
    end
end
assign  rt_mem_wdata_h=reg_060;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_064<=32'h0000_0000;
    end
    else if (wr_064_en) begin
       reg_064<=reg_wr_data;
    end
end
assign  rt_mem_wdata_m=reg_064;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_068<=32'h0000_0000;
    end
    else if (wr_068_en) begin
       reg_068<=reg_wr_data;
    end
end
assign  rt_mem_wdata_l=reg_068;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_06c<=16'h000;
    end
    else if (wr_06c_en) begin
       reg_06c<=reg_wr_data;
    end
end
assign  rt_mem_addr=reg_06c;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_070<=32'h0;
    end
    else if (wr_070_en) begin
       reg_070<=reg_wr_data;
    end
end
assign  dma_des_base_addr_l=reg_070;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_074<=32'h0;
    end
    else if (wr_074_en) begin
       reg_074<=reg_wr_data;
    end
end
assign  dma_des_base_addr_h=reg_074;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_078<=32'h1_0000;
    end
    else if (wr_078_en) begin
       reg_078<=reg_wr_data;
    end
end
assign  dma_des_edge_addr_l=reg_078;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_07c<=32'h0;
    end
    else if (wr_07c_en) begin
       reg_07c<=reg_wr_data;
    end
end
assign  dma_des_edge_addr_h=reg_07c;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_080<=32'h0000;
    end
    else  begin
       reg_080<=drop_pkt_cnt;
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_084<=1'b0;
    end
    else if (wr_084_en) begin
       reg_084<=reg_wr_data;
    end
end
assign  eth_rx_enable=reg_084;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_088<=1'b0;
    end
    else if (wr_088_en) begin
       reg_088<=reg_wr_data;
    end
end
assign  eth_tx_enable=reg_088;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_08c<=1'b0;
    end
    else  begin
       reg_08c<=eth_tx_fifo_full;
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_090<=32'h5A5A_5A5A;
    end
    else if (wr_090_en) begin
       reg_090<=reg_wr_data;
    end
end
assign  params_force_mac_addrl=reg_090;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_094<=16'hF10A;
    end
    else if (wr_094_en) begin
       reg_094<=reg_wr_data;
    end
end
assign  params_force_mac_addrh=reg_094;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_098<=1'd0;
    end
    else if (wr_098_en) begin
       reg_098<=reg_wr_data;
    end
end
assign  params_force_mac_addr_en=reg_098;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_09c<=32'h5A5A_5A5A;
    end
    else if (wr_09c_en) begin
       reg_09c<=reg_wr_data;
    end
end
assign  params_force_chipidl=reg_09c;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_0a0<=32'h5A5A_5A5A;
    end
    else if (wr_0a0_en) begin
       reg_0a0<=reg_wr_data;
    end
end
assign  params_force_chipidh=reg_0a0;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_0a4<=1'd0;
    end
    else if (wr_0a4_en) begin
       reg_0a4<=reg_wr_data;
    end
end
assign  params_force_chipid_en=reg_0a4;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_0a8<=1'b1;
    end
    else if (wr_0a8_en) begin
       reg_0a8<=reg_wr_data;
    end
end
assign  bypass_host_filter=reg_0a8;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_0ac<=16'h00ff;
    end
    else if (wr_0ac_en) begin
       reg_0ac<=reg_wr_data;
    end
end
assign  host_id=reg_0ac;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_0b0<=16'hffff;
    end
    else if (wr_0b0_en) begin
       reg_0b0<=reg_wr_data;
    end
end
assign  params_board_id=reg_0b0;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_0b4<=32'h0000_0000;
    end
    else  begin
       reg_0b4<=params_chip_ip_ro;
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_0b8<=32'h5a5a_5a5a;
    end
    else if (wr_0b8_en) begin
       reg_0b8<=reg_wr_data;
    end
end
assign  params_force_chip_ip=reg_0b8;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_0bc<=1'b0;
    end
    else if (wr_0bc_en) begin
       reg_0bc<=reg_wr_data;
    end
end
assign  params_force_chip_ip_en=reg_0bc;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_0c0<=1'b0;
    end
    else  begin
       reg_0c0<=params_chip_ip_done_ro;
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_0cc<=32'h0134_1603;
    end
    else  begin
       reg_0cc<=params_version_date_ro;
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_0d0<=32'h0000_0001;
    end
    else  begin
       reg_0d0<=params_version_num_ro;
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_0d4<=1'b0;
    end
    else if (wr_0d4_en) begin
       reg_0d4<=reg_wr_data;
    end
    else begin
       reg_0d4<='d0;
    end
end
assign  params_protocol_rst=reg_0d4;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_0d8<=1'b0;
    end
    else if (wr_0d8_en) begin
       reg_0d8<=reg_wr_data;
    end
    else begin
       reg_0d8<='d0;
    end
end
assign  params_dhcp_start=reg_0d8;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_0dc<=32'h0000_0000;
    end
    else if (wr_0dc_en) begin
       reg_0dc<=reg_wr_data;
    end
end
assign  kernel_irq_id=reg_0dc;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_0e0<=1'b0;
    end
    else if (wr_0e0_en) begin
       reg_0e0<=reg_wr_data;
    end
end
assign  params_kernel_irq_cfg=reg_0e0;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_0e4<=1'b1;
    end
    else if (wr_0e4_en) begin
       reg_0e4<=reg_wr_data;
    end
end
assign  params_kernel_irq_on=reg_0e4;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_0e8<=1'b0;
    end
    else if (wr_0e8_en) begin
       reg_0e8<=reg_wr_data;
    end
end
assign  params_kernel_irq_cycle_on=reg_0e8;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_0f0<=32'h0000;
    end
    else  begin
       reg_0f0<=param_drop_pkt_count_l;
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_0f4<=32'h0000;
    end
    else  begin
       reg_0f4<=param_drop_pkt_count_h;
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_0f8<=32'h0000;
    end
    else  begin
       reg_0f8<=param_crc_err_count_l;
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_0fc<=32'h0000;
    end
    else  begin
       reg_0fc<=param_crc_err_count_h;
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_100<=32'h0000_0000;
    end
    else  begin
       reg_100<=params_data_cfifo_overflow_cnt;
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_104<=32'h0000_0000;
    end
    else  begin
       reg_104<=params_data_fsm_erro_cnt;
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_108<=32'h1dcd_6500;
    end
    else if (wr_108_en) begin
       reg_108<=reg_wr_data;
    end
end
assign  params_irq_ack_cnt=reg_108;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_10C<=32'h0773_5940;
    end
    else if (wr_10C_en) begin
       reg_10C<=reg_wr_data;
    end
end
assign  params_reg_ack_cnt=reg_10C;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_110<=32'h0001_0000;
    end
    else if (wr_110_en) begin
       reg_110<=reg_wr_data;
    end
end
assign  params_test_period=reg_110;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_114<=32'h0000_0000;
    end
    else  begin
       reg_114<=kernel_reg_latence_cnt;
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_118<=4'h0;
    end
    else if (wr_118_en) begin
       reg_118<=reg_wr_data;
    end
end
assign  params_mode_sel=reg_118;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_11C<=4'h0;
    end
    else if (wr_11C_en) begin
       reg_11C<=reg_wr_data;
    end
end
assign  params_st_enable_in_chan=reg_11C;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_120<=4'h0;
    end
    else if (wr_120_en) begin
       reg_120<=reg_wr_data;
    end
end
assign  params_st_enable_out_chan=reg_120;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_124<=1'b0;
    end
    else if (wr_124_en) begin
       reg_124<=reg_wr_data;
    end
    else begin
       reg_124<='d0;
    end
end
assign  params_kernel_st_rst=reg_124;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_128<=1'b0;
    end
    else if (wr_128_en) begin
       reg_128<=reg_wr_data;
    end
end
assign  params_iter_off=reg_128;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_12c<=8'h8;
    end
    else if (wr_12c_en) begin
       reg_12c<=reg_wr_data;
    end
end
assign  params_iter_time_cnt=reg_12c;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_130<=1'h0;
    end
    else  begin
       reg_130<=params_iter_time_out_ro;
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_134<=1'h0;
    end
    else if (wr_134_en) begin
       reg_134<=reg_wr_data;
    end
end
assign  params_mac_rst_en=reg_134;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_138<=16'h0;
    end
    else  begin
       reg_138<=params_kernel_irq_cnt_ro;
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_13c<=1'b0;
    end
    else  begin
       reg_13c<=params_kernel_irq_ro;
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_1fc<=32'h5a5a_5a5a;
    end
    else if (wr_1fc_en) begin
       reg_1fc<=reg_wr_data;
    end
end
assign  params_test=reg_1fc;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_200<=4'h0;
    end
    else if (wr_200_en) begin
       reg_200<=reg_wr_data;
    end
end
assign  set_qp_enable=reg_200;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_800<=32'h1_0000;
    end
    else if (wr_800_en) begin
       reg_800<=reg_wr_data;
    end
end
assign  params_trans_saddr_l[0]=reg_800;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_804<=32'h0_0000;
    end
    else if (wr_804_en) begin
       reg_804<=reg_wr_data;
    end
end
assign  params_trans_saddr_h[0]=reg_804;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_808<=32'h2_0000;
    end
    else if (wr_808_en) begin
       reg_808<=reg_wr_data;
    end
end
assign  params_trans_daddr_l[0]=reg_808;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_80C<=32'h0_0000;
    end
    else if (wr_80C_en) begin
       reg_80C<=reg_wr_data;
    end
end
assign  params_trans_daddr_h[0]=reg_80C;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_810<=32'h2000;
    end
    else if (wr_810_en) begin
       reg_810<=reg_wr_data;
    end
end
assign  params_trans_data_len[0]=reg_810;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_814<=16'h1;
    end
    else if (wr_814_en) begin
       reg_814<=reg_wr_data;
    end
end
assign  params_trans_sid_reg[0]=reg_814;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_818<=16'h2;
    end
    else if (wr_818_en) begin
       reg_818<=reg_wr_data;
    end
end
assign  params_trans_did_reg[0]=reg_818;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_81C<=16'h0000;
    end
    else if (wr_81C_en) begin
       reg_81C<=reg_wr_data;
    end
end
assign  params_qp[0]=reg_81C;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_820<=32'h0_3072;
    end
    else if (wr_820_en) begin
       reg_820<=reg_wr_data;
    end
end
assign  set_period_ack[0]=reg_820;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_824<=32'h0000_0000;
    end
    else  begin
       reg_824<=seq_err_cnt[0];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_828<=32'h0000_0000;
    end
    else  begin
       reg_828<=dbg_seq_num[0];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_82C<=16'hff;
    end
    else if (wr_82C_en) begin
       reg_82C<=reg_wr_data;
    end
end
assign  params_rq_trans_ssid[0]=reg_82C;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_830<=16'h0001;
    end
    else if (wr_830_en) begin
       reg_830<=reg_wr_data;
    end
end
assign  params_trans_req_type[0]=reg_830;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_834<=32'h0001;
    end
    else if (wr_834_en) begin
       reg_834<=reg_wr_data;
    end
end
assign  params_trans_seq[0]=reg_834;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_838<=16'h0000;
    end
    else if (wr_838_en) begin
       reg_838<=reg_wr_data;
    end
end
assign  params_trans_qp[0]=reg_838;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_83C<=16'h000;
    end
    else if (wr_83C_en) begin
       reg_83C<=reg_wr_data;
    end
end
assign  params_trans_blknum[0]=reg_83C;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_840<=16'h000;
    end
    else if (wr_840_en) begin
       reg_840<=reg_wr_data;
    end
end
assign  params_trans_cmdtype[0]=reg_840;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_844<=32'h0000_0000;
    end
    else  begin
       reg_844<=params_fct_latence[0];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_848<=32'h0000_0000;
    end
    else  begin
       reg_848<=params_test_pkts_tatol[0];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_84c<=32'h0000_0000;
    end
    else  begin
       reg_84c<=params_test_pps[0];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_850<=32'h0000_0000;
    end
    else  begin
       reg_850<=params_test_thoughput[0];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_854<=32'h0000_0000;
    end
    else  begin
       reg_854<=params_test_thrp_max[0];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_858<=32'h0000_0400;
    end
    else if (wr_858_en) begin
       reg_858<=reg_wr_data;
    end
end
assign  params_st_payload_max_size[0]=reg_858;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_85C<=32'h0000_02ee;
    end
    else if (wr_85C_en) begin
       reg_85C<=reg_wr_data;
    end
end
assign  params_st_credit_updata_period[0]=reg_85C;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_860<=32'h0000_0100;
    end
    else if (wr_860_en) begin
       reg_860<=reg_wr_data;
    end
end
assign  params_st_unload_timer_tc[0]=reg_860;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_864<=32'h0000_00a0;
    end
    else if (wr_864_en) begin
       reg_864<=reg_wr_data;
    end
end
assign  params_st_sti_fifo_deep_min[0]=reg_864;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_868<=32'h0000_0400;
    end
    else if (wr_868_en) begin
       reg_868<=reg_wr_data;
    end
end
assign  params_st_pkt_len[0]=reg_868;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_86C<=32'h0000_0000;
    end
    else  begin
       reg_86C<=params_sto_data_cnt[0];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_870<=32'h0000_0000;
    end
    else  begin
       reg_870<=params_sti_data_cnt[0];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_900<=32'h3_0000;
    end
    else if (wr_900_en) begin
       reg_900<=reg_wr_data;
    end
end
assign  params_trans_saddr_l[1]=reg_900;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_904<=32'h0_0000;
    end
    else if (wr_904_en) begin
       reg_904<=reg_wr_data;
    end
end
assign  params_trans_saddr_h[1]=reg_904;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_908<=32'h4_0000;
    end
    else if (wr_908_en) begin
       reg_908<=reg_wr_data;
    end
end
assign  params_trans_daddr_l[1]=reg_908;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_90C<=32'h0_0000;
    end
    else if (wr_90C_en) begin
       reg_90C<=reg_wr_data;
    end
end
assign  params_trans_daddr_h[1]=reg_90C;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_910<=32'h3000;
    end
    else if (wr_910_en) begin
       reg_910<=reg_wr_data;
    end
end
assign  params_trans_data_len[1]=reg_910;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_914<=16'h1;
    end
    else if (wr_914_en) begin
       reg_914<=reg_wr_data;
    end
end
assign  params_trans_sid_reg[1]=reg_914;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_918<=16'h2;
    end
    else if (wr_918_en) begin
       reg_918<=reg_wr_data;
    end
end
assign  params_trans_did_reg[1]=reg_918;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_91C<=16'h0001;
    end
    else if (wr_91C_en) begin
       reg_91C<=reg_wr_data;
    end
end
assign  params_qp[1]=reg_91C;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_920<=32'h03072;
    end
    else if (wr_920_en) begin
       reg_920<=reg_wr_data;
    end
end
assign  set_period_ack[1]=reg_920;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_924<=32'h0000_0000;
    end
    else  begin
       reg_924<=seq_err_cnt[1];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_928<=32'h0000_0000;
    end
    else  begin
       reg_928<=dbg_seq_num[1];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_92C<=16'hff;
    end
    else if (wr_92C_en) begin
       reg_92C<=reg_wr_data;
    end
end
assign  params_rq_trans_ssid[1]=reg_92C;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_930<=16'h0001;
    end
    else if (wr_930_en) begin
       reg_930<=reg_wr_data;
    end
end
assign  params_trans_req_type[1]=reg_930;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_934<=32'h0001;
    end
    else if (wr_934_en) begin
       reg_934<=reg_wr_data;
    end
end
assign  params_trans_seq[1]=reg_934;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_938<=16'h0001;
    end
    else if (wr_938_en) begin
       reg_938<=reg_wr_data;
    end
end
assign  params_trans_qp[1]=reg_938;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_93C<=16'h000;
    end
    else if (wr_93C_en) begin
       reg_93C<=reg_wr_data;
    end
end
assign  params_trans_blknum[1]=reg_93C;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_940<=16'h000;
    end
    else if (wr_940_en) begin
       reg_940<=reg_wr_data;
    end
end
assign  params_trans_cmdtype[1]=reg_940;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_944<=32'h0000_0000;
    end
    else  begin
       reg_944<=params_fct_latence[1];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_948<=32'h0000_0000;
    end
    else  begin
       reg_948<=params_test_pkts_tatol[1];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_94c<=32'h0000_0000;
    end
    else  begin
       reg_94c<=params_test_pps[1];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_950<=32'h0000_0000;
    end
    else  begin
       reg_950<=params_test_thoughput[1];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_954<=32'h0000_0000;
    end
    else  begin
       reg_954<=params_test_thrp_max[1];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_958<=32'h0000_0400;
    end
    else if (wr_958_en) begin
       reg_958<=reg_wr_data;
    end
end
assign  params_st_payload_max_size[1]=reg_958;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_95C<=32'h0000_02ee;
    end
    else if (wr_95C_en) begin
       reg_95C<=reg_wr_data;
    end
end
assign  params_st_credit_updata_period[1]=reg_95C;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_960<=32'h0000_0100;
    end
    else if (wr_960_en) begin
       reg_960<=reg_wr_data;
    end
end
assign  params_st_unload_timer_tc[1]=reg_960;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_964<=32'h0000_00a0;
    end
    else if (wr_964_en) begin
       reg_964<=reg_wr_data;
    end
end
assign  params_st_sti_fifo_deep_min[1]=reg_964;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_968<=32'h0000_0400;
    end
    else if (wr_968_en) begin
       reg_968<=reg_wr_data;
    end
end
assign  params_st_pkt_len[1]=reg_968;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_96C<=32'h0000_0000;
    end
    else  begin
       reg_96C<=params_sto_data_cnt[1];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_970<=32'h0000_0000;
    end
    else  begin
       reg_970<=params_sti_data_cnt[1];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a00<=32'h5_0000;
    end
    else if (wr_a00_en) begin
       reg_a00<=reg_wr_data;
    end
end
assign  params_trans_saddr_l[2]=reg_a00;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a04<=32'h0_0000;
    end
    else if (wr_a04_en) begin
       reg_a04<=reg_wr_data;
    end
end
assign  params_trans_saddr_h[2]=reg_a04;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a08<=32'h6_0000;
    end
    else if (wr_a08_en) begin
       reg_a08<=reg_wr_data;
    end
end
assign  params_trans_daddr_l[2]=reg_a08;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a0C<=32'h0_0000;
    end
    else if (wr_a0C_en) begin
       reg_a0C<=reg_wr_data;
    end
end
assign  params_trans_daddr_h[2]=reg_a0C;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a10<=32'h2000;
    end
    else if (wr_a10_en) begin
       reg_a10<=reg_wr_data;
    end
end
assign  params_trans_data_len[2]=reg_a10;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a14<=16'h1;
    end
    else if (wr_a14_en) begin
       reg_a14<=reg_wr_data;
    end
end
assign  params_trans_sid_reg[2]=reg_a14;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a18<=16'h2;
    end
    else if (wr_a18_en) begin
       reg_a18<=reg_wr_data;
    end
end
assign  params_trans_did_reg[2]=reg_a18;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a1C<=16'h0002;
    end
    else if (wr_a1C_en) begin
       reg_a1C<=reg_wr_data;
    end
end
assign  params_qp[2]=reg_a1C;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a20<=32'h2d_c6c0;
    end
    else if (wr_a20_en) begin
       reg_a20<=reg_wr_data;
    end
end
assign  set_period_ack[2]=reg_a20;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a24<=32'h0000_0000;
    end
    else  begin
       reg_a24<=seq_err_cnt[2];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a28<=32'h0000_0000;
    end
    else  begin
       reg_a28<=dbg_seq_num[2];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a2C<=16'hff;
    end
    else if (wr_a2C_en) begin
       reg_a2C<=reg_wr_data;
    end
end
assign  params_rq_trans_ssid[2]=reg_a2C;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a30<=16'h0001;
    end
    else if (wr_a30_en) begin
       reg_a30<=reg_wr_data;
    end
end
assign  params_trans_req_type[2]=reg_a30;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a34<=32'h0001;
    end
    else if (wr_a34_en) begin
       reg_a34<=reg_wr_data;
    end
end
assign  params_trans_seq[2]=reg_a34;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a38<=16'h0002;
    end
    else if (wr_a38_en) begin
       reg_a38<=reg_wr_data;
    end
end
assign  params_trans_qp[2]=reg_a38;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a3C<=16'h000;
    end
    else if (wr_a3C_en) begin
       reg_a3C<=reg_wr_data;
    end
end
assign  params_trans_blknum[2]=reg_a3C;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a40<=16'h000;
    end
    else if (wr_a40_en) begin
       reg_a40<=reg_wr_data;
    end
end
assign  params_trans_cmdtype[2]=reg_a40;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a44<=32'h0000_0000;
    end
    else  begin
       reg_a44<=params_fct_latence[2];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a48<=32'h0000_0000;
    end
    else  begin
       reg_a48<=params_test_pkts_tatol[2];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a4c<=32'h0000_0000;
    end
    else  begin
       reg_a4c<=params_test_pps[2];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a50<=32'h0000_0000;
    end
    else  begin
       reg_a50<=params_test_thoughput[2];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a54<=32'h0000_0000;
    end
    else  begin
       reg_a54<=params_test_thrp_max[2];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a58<=32'h0000_0400;
    end
    else if (wr_a58_en) begin
       reg_a58<=reg_wr_data;
    end
end
assign  params_st_payload_max_size[2]=reg_a58;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a5C<=32'h0000_02ee;
    end
    else if (wr_a5C_en) begin
       reg_a5C<=reg_wr_data;
    end
end
assign  params_st_credit_updata_period[2]=reg_a5C;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a60<=32'h0000_0100;
    end
    else if (wr_a60_en) begin
       reg_a60<=reg_wr_data;
    end
end
assign  params_st_unload_timer_tc[2]=reg_a60;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a64<=32'h0000_00a0;
    end
    else if (wr_a64_en) begin
       reg_a64<=reg_wr_data;
    end
end
assign  params_st_sti_fifo_deep_min[2]=reg_a64;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a68<=32'h0000_0400;
    end
    else if (wr_a68_en) begin
       reg_a68<=reg_wr_data;
    end
end
assign  params_st_pkt_len[2]=reg_a68;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a6C<=32'h0000_0000;
    end
    else  begin
       reg_a6C<=params_sto_data_cnt[2];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_a70<=32'h0000_0000;
    end
    else  begin
       reg_a70<=params_sti_data_cnt[2];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b00<=32'h7_0000;
    end
    else if (wr_b00_en) begin
       reg_b00<=reg_wr_data;
    end
end
assign  params_trans_saddr_l[3]=reg_b00;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b04<=32'h0_0000;
    end
    else if (wr_b04_en) begin
       reg_b04<=reg_wr_data;
    end
end
assign  params_trans_saddr_h[3]=reg_b04;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b08<=32'h8_0000;
    end
    else if (wr_b08_en) begin
       reg_b08<=reg_wr_data;
    end
end
assign  params_trans_daddr_l[3]=reg_b08;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b0C<=32'h0_0000;
    end
    else if (wr_b0C_en) begin
       reg_b0C<=reg_wr_data;
    end
end
assign  params_trans_daddr_h[3]=reg_b0C;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b10<=32'h2000;
    end
    else if (wr_b10_en) begin
       reg_b10<=reg_wr_data;
    end
end
assign  params_trans_data_len[3]=reg_b10;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b14<=16'h0;
    end
    else if (wr_b14_en) begin
       reg_b14<=reg_wr_data;
    end
end
assign  params_trans_sid_reg[3]=reg_b14;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b18<=16'h1;
    end
    else if (wr_b18_en) begin
       reg_b18<=reg_wr_data;
    end
end
assign  params_trans_did_reg[3]=reg_b18;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b1C<=16'h0003;
    end
    else if (wr_b1C_en) begin
       reg_b1C<=reg_wr_data;
    end
end
assign  params_qp[3]=reg_b1C;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b20<=32'h02d_c6c0;
    end
    else if (wr_b20_en) begin
       reg_b20<=reg_wr_data;
    end
end
assign  set_period_ack[3]=reg_b20;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b24<=32'h0000_0000;
    end
    else  begin
       reg_b24<=seq_err_cnt[3];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b28<=32'h0000_0000;
    end
    else  begin
       reg_b28<=dbg_seq_num[3];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b2C<=16'hff;
    end
    else if (wr_b2C_en) begin
       reg_b2C<=reg_wr_data;
    end
end
assign  params_rq_trans_ssid[3]=reg_b2C;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b30<=16'h0001;
    end
    else if (wr_b30_en) begin
       reg_b30<=reg_wr_data;
    end
end
assign  params_trans_req_type[3]=reg_b30;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b34<=32'h0001;
    end
    else if (wr_b34_en) begin
       reg_b34<=reg_wr_data;
    end
end
assign  params_trans_seq[3]=reg_b34;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b38<=16'h0003;
    end
    else if (wr_b38_en) begin
       reg_b38<=reg_wr_data;
    end
end
assign  params_trans_qp[3]=reg_b38;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b3C<=16'h000;
    end
    else if (wr_b3C_en) begin
       reg_b3C<=reg_wr_data;
    end
end
assign  params_trans_blknum[3]=reg_b3C;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b40<=16'h000;
    end
    else if (wr_b40_en) begin
       reg_b40<=reg_wr_data;
    end
end
assign  params_trans_cmdtype[3]=reg_b40;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b44<=32'h0000_0000;
    end
    else  begin
       reg_b44<=params_fct_latence[3];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b48<=32'h0000_0000;
    end
    else  begin
       reg_b48<=params_test_pkts_tatol[3];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b4c<=32'h0000_0000;
    end
    else  begin
       reg_b4c<=params_test_pps[3];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b50<=32'h0000_0000;
    end
    else  begin
       reg_b50<=params_test_thoughput[3];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b54<=32'h0000_0000;
    end
    else  begin
       reg_b54<=params_test_thrp_max[3];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b58<=32'h0000_0400;
    end
    else if (wr_b58_en) begin
       reg_b58<=reg_wr_data;
    end
end
assign  params_st_payload_max_size[3]=reg_b58;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b5C<=32'h0000_02ee;
    end
    else if (wr_b5C_en) begin
       reg_b5C<=reg_wr_data;
    end
end
assign  params_st_credit_updata_period[3]=reg_b5C;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b60<=32'h0000_0100;
    end
    else if (wr_b60_en) begin
       reg_b60<=reg_wr_data;
    end
end
assign  params_st_unload_timer_tc[3]=reg_b60;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b64<=32'h0000_00a0;
    end
    else if (wr_b64_en) begin
       reg_b64<=reg_wr_data;
    end
end
assign  params_st_sti_fifo_deep_min[3]=reg_b64;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b68<=32'h0000_0400;
    end
    else if (wr_b68_en) begin
       reg_b68<=reg_wr_data;
    end
end
assign  params_st_pkt_len[3]=reg_b68;
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b6C<=32'h0000_0000;
    end
    else  begin
       reg_b6C<=params_sto_data_cnt[3];
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_b70<=32'h0000_0000;
    end
    else  begin
       reg_b70<=params_sti_data_cnt[3];
    end
end
always @( * )
begin
    case(sub_reg_addr) 
    12'h000 : reg_MFUNC_TOP_rd_data=reg_000;
    12'h004 : reg_MFUNC_TOP_rd_data=reg_004;
    12'h008 : reg_MFUNC_TOP_rd_data=reg_008;
    12'h00c : reg_MFUNC_TOP_rd_data=reg_00c;
    12'h020 : reg_MFUNC_TOP_rd_data=reg_020;
    12'h024 : reg_MFUNC_TOP_rd_data=reg_024;
    12'h028 : reg_MFUNC_TOP_rd_data=reg_028;
    12'h02c : reg_MFUNC_TOP_rd_data=reg_02c;
    12'h030 : reg_MFUNC_TOP_rd_data=reg_030;
    12'h034 : reg_MFUNC_TOP_rd_data=reg_034;
    12'h038 : reg_MFUNC_TOP_rd_data=reg_038;
    12'h03c : reg_MFUNC_TOP_rd_data=reg_03c;
    12'h040 : reg_MFUNC_TOP_rd_data=reg_040;
    12'h044 : reg_MFUNC_TOP_rd_data=reg_044;
    12'h048 : reg_MFUNC_TOP_rd_data=reg_048;
    12'h04c : reg_MFUNC_TOP_rd_data=reg_04c;
    12'h050 : reg_MFUNC_TOP_rd_data=reg_050;
    12'h054 : reg_MFUNC_TOP_rd_data=reg_054;
    12'h058 : reg_MFUNC_TOP_rd_data=reg_058;
    12'h060 : reg_MFUNC_TOP_rd_data=reg_060;
    12'h064 : reg_MFUNC_TOP_rd_data=reg_064;
    12'h068 : reg_MFUNC_TOP_rd_data=reg_068;
    12'h06c : reg_MFUNC_TOP_rd_data=reg_06c;
    12'h070 : reg_MFUNC_TOP_rd_data=reg_070;
    12'h074 : reg_MFUNC_TOP_rd_data=reg_074;
    12'h078 : reg_MFUNC_TOP_rd_data=reg_078;
    12'h07c : reg_MFUNC_TOP_rd_data=reg_07c;
    12'h080 : reg_MFUNC_TOP_rd_data=reg_080;
    12'h084 : reg_MFUNC_TOP_rd_data=reg_084;
    12'h088 : reg_MFUNC_TOP_rd_data=reg_088;
    12'h08c : reg_MFUNC_TOP_rd_data=reg_08c;
    12'h090 : reg_MFUNC_TOP_rd_data=reg_090;
    12'h094 : reg_MFUNC_TOP_rd_data=reg_094;
    12'h098 : reg_MFUNC_TOP_rd_data=reg_098;
    12'h09c : reg_MFUNC_TOP_rd_data=reg_09c;
    12'h0a0 : reg_MFUNC_TOP_rd_data=reg_0a0;
    12'h0a4 : reg_MFUNC_TOP_rd_data=reg_0a4;
    12'h0a8 : reg_MFUNC_TOP_rd_data=reg_0a8;
    12'h0ac : reg_MFUNC_TOP_rd_data=reg_0ac;
    12'h0b0 : reg_MFUNC_TOP_rd_data=reg_0b0;
    12'h0b4 : reg_MFUNC_TOP_rd_data=reg_0b4;
    12'h0b8 : reg_MFUNC_TOP_rd_data=reg_0b8;
    12'h0bc : reg_MFUNC_TOP_rd_data=reg_0bc;
    12'h0c0 : reg_MFUNC_TOP_rd_data=reg_0c0;
    12'h0cc : reg_MFUNC_TOP_rd_data=reg_0cc;
    12'h0d0 : reg_MFUNC_TOP_rd_data=reg_0d0;
    12'h0d4 : reg_MFUNC_TOP_rd_data=reg_0d4;
    12'h0d8 : reg_MFUNC_TOP_rd_data=reg_0d8;
    12'h0dc : reg_MFUNC_TOP_rd_data=reg_0dc;
    12'h0e0 : reg_MFUNC_TOP_rd_data=reg_0e0;
    12'h0e4 : reg_MFUNC_TOP_rd_data=reg_0e4;
    12'h0e8 : reg_MFUNC_TOP_rd_data=reg_0e8;
    12'h0f0 : reg_MFUNC_TOP_rd_data=reg_0f0;
    12'h0f4 : reg_MFUNC_TOP_rd_data=reg_0f4;
    12'h0f8 : reg_MFUNC_TOP_rd_data=reg_0f8;
    12'h0fc : reg_MFUNC_TOP_rd_data=reg_0fc;
    12'h100 : reg_MFUNC_TOP_rd_data=reg_100;
    12'h104 : reg_MFUNC_TOP_rd_data=reg_104;
    12'h108 : reg_MFUNC_TOP_rd_data=reg_108;
    12'h10C : reg_MFUNC_TOP_rd_data=reg_10C;
    12'h110 : reg_MFUNC_TOP_rd_data=reg_110;
    12'h114 : reg_MFUNC_TOP_rd_data=reg_114;
    12'h118 : reg_MFUNC_TOP_rd_data=reg_118;
    12'h11C : reg_MFUNC_TOP_rd_data=reg_11C;
    12'h120 : reg_MFUNC_TOP_rd_data=reg_120;
    12'h124 : reg_MFUNC_TOP_rd_data=reg_124;
    12'h128 : reg_MFUNC_TOP_rd_data=reg_128;
    12'h12c : reg_MFUNC_TOP_rd_data=reg_12c;
    12'h130 : reg_MFUNC_TOP_rd_data=reg_130;
    12'h134 : reg_MFUNC_TOP_rd_data=reg_134;
    12'h138 : reg_MFUNC_TOP_rd_data=reg_138;
    12'h13c : reg_MFUNC_TOP_rd_data=reg_13c;
    12'h1fc : reg_MFUNC_TOP_rd_data=reg_1fc;
    12'h200 : reg_MFUNC_TOP_rd_data=reg_200;
    12'h800 : reg_MFUNC_TOP_rd_data=reg_800;
    12'h804 : reg_MFUNC_TOP_rd_data=reg_804;
    12'h808 : reg_MFUNC_TOP_rd_data=reg_808;
    12'h80C : reg_MFUNC_TOP_rd_data=reg_80C;
    12'h810 : reg_MFUNC_TOP_rd_data=reg_810;
    12'h814 : reg_MFUNC_TOP_rd_data=reg_814;
    12'h818 : reg_MFUNC_TOP_rd_data=reg_818;
    12'h81C : reg_MFUNC_TOP_rd_data=reg_81C;
    12'h820 : reg_MFUNC_TOP_rd_data=reg_820;
    12'h824 : reg_MFUNC_TOP_rd_data=reg_824;
    12'h828 : reg_MFUNC_TOP_rd_data=reg_828;
    12'h82C : reg_MFUNC_TOP_rd_data=reg_82C;
    12'h830 : reg_MFUNC_TOP_rd_data=reg_830;
    12'h834 : reg_MFUNC_TOP_rd_data=reg_834;
    12'h838 : reg_MFUNC_TOP_rd_data=reg_838;
    12'h83C : reg_MFUNC_TOP_rd_data=reg_83C;
    12'h840 : reg_MFUNC_TOP_rd_data=reg_840;
    12'h844 : reg_MFUNC_TOP_rd_data=reg_844;
    12'h848 : reg_MFUNC_TOP_rd_data=reg_848;
    12'h84c : reg_MFUNC_TOP_rd_data=reg_84c;
    12'h850 : reg_MFUNC_TOP_rd_data=reg_850;
    12'h854 : reg_MFUNC_TOP_rd_data=reg_854;
    12'h858 : reg_MFUNC_TOP_rd_data=reg_858;
    12'h85C : reg_MFUNC_TOP_rd_data=reg_85C;
    12'h860 : reg_MFUNC_TOP_rd_data=reg_860;
    12'h864 : reg_MFUNC_TOP_rd_data=reg_864;
    12'h868 : reg_MFUNC_TOP_rd_data=reg_868;
    12'h86C : reg_MFUNC_TOP_rd_data=reg_86C;
    12'h870 : reg_MFUNC_TOP_rd_data=reg_870;
    12'h900 : reg_MFUNC_TOP_rd_data=reg_900;
    12'h904 : reg_MFUNC_TOP_rd_data=reg_904;
    12'h908 : reg_MFUNC_TOP_rd_data=reg_908;
    12'h90C : reg_MFUNC_TOP_rd_data=reg_90C;
    12'h910 : reg_MFUNC_TOP_rd_data=reg_910;
    12'h914 : reg_MFUNC_TOP_rd_data=reg_914;
    12'h918 : reg_MFUNC_TOP_rd_data=reg_918;
    12'h91C : reg_MFUNC_TOP_rd_data=reg_91C;
    12'h920 : reg_MFUNC_TOP_rd_data=reg_920;
    12'h924 : reg_MFUNC_TOP_rd_data=reg_924;
    12'h928 : reg_MFUNC_TOP_rd_data=reg_928;
    12'h92C : reg_MFUNC_TOP_rd_data=reg_92C;
    12'h930 : reg_MFUNC_TOP_rd_data=reg_930;
    12'h934 : reg_MFUNC_TOP_rd_data=reg_934;
    12'h938 : reg_MFUNC_TOP_rd_data=reg_938;
    12'h93C : reg_MFUNC_TOP_rd_data=reg_93C;
    12'h940 : reg_MFUNC_TOP_rd_data=reg_940;
    12'h944 : reg_MFUNC_TOP_rd_data=reg_944;
    12'h948 : reg_MFUNC_TOP_rd_data=reg_948;
    12'h94c : reg_MFUNC_TOP_rd_data=reg_94c;
    12'h950 : reg_MFUNC_TOP_rd_data=reg_950;
    12'h954 : reg_MFUNC_TOP_rd_data=reg_954;
    12'h958 : reg_MFUNC_TOP_rd_data=reg_958;
    12'h95C : reg_MFUNC_TOP_rd_data=reg_95C;
    12'h960 : reg_MFUNC_TOP_rd_data=reg_960;
    12'h964 : reg_MFUNC_TOP_rd_data=reg_964;
    12'h968 : reg_MFUNC_TOP_rd_data=reg_968;
    12'h96C : reg_MFUNC_TOP_rd_data=reg_96C;
    12'h970 : reg_MFUNC_TOP_rd_data=reg_970;
    12'ha00 : reg_MFUNC_TOP_rd_data=reg_a00;
    12'ha04 : reg_MFUNC_TOP_rd_data=reg_a04;
    12'ha08 : reg_MFUNC_TOP_rd_data=reg_a08;
    12'ha0C : reg_MFUNC_TOP_rd_data=reg_a0C;
    12'ha10 : reg_MFUNC_TOP_rd_data=reg_a10;
    12'ha14 : reg_MFUNC_TOP_rd_data=reg_a14;
    12'ha18 : reg_MFUNC_TOP_rd_data=reg_a18;
    12'ha1C : reg_MFUNC_TOP_rd_data=reg_a1C;
    12'ha20 : reg_MFUNC_TOP_rd_data=reg_a20;
    12'ha24 : reg_MFUNC_TOP_rd_data=reg_a24;
    12'ha28 : reg_MFUNC_TOP_rd_data=reg_a28;
    12'ha2C : reg_MFUNC_TOP_rd_data=reg_a2C;
    12'ha30 : reg_MFUNC_TOP_rd_data=reg_a30;
    12'ha34 : reg_MFUNC_TOP_rd_data=reg_a34;
    12'ha38 : reg_MFUNC_TOP_rd_data=reg_a38;
    12'ha3C : reg_MFUNC_TOP_rd_data=reg_a3C;
    12'ha40 : reg_MFUNC_TOP_rd_data=reg_a40;
    12'ha44 : reg_MFUNC_TOP_rd_data=reg_a44;
    12'ha48 : reg_MFUNC_TOP_rd_data=reg_a48;
    12'ha4c : reg_MFUNC_TOP_rd_data=reg_a4c;
    12'ha50 : reg_MFUNC_TOP_rd_data=reg_a50;
    12'ha54 : reg_MFUNC_TOP_rd_data=reg_a54;
    12'ha58 : reg_MFUNC_TOP_rd_data=reg_a58;
    12'ha5C : reg_MFUNC_TOP_rd_data=reg_a5C;
    12'ha60 : reg_MFUNC_TOP_rd_data=reg_a60;
    12'ha64 : reg_MFUNC_TOP_rd_data=reg_a64;
    12'ha68 : reg_MFUNC_TOP_rd_data=reg_a68;
    12'ha6C : reg_MFUNC_TOP_rd_data=reg_a6C;
    12'ha70 : reg_MFUNC_TOP_rd_data=reg_a70;
    12'hb00 : reg_MFUNC_TOP_rd_data=reg_b00;
    12'hb04 : reg_MFUNC_TOP_rd_data=reg_b04;
    12'hb08 : reg_MFUNC_TOP_rd_data=reg_b08;
    12'hb0C : reg_MFUNC_TOP_rd_data=reg_b0C;
    12'hb10 : reg_MFUNC_TOP_rd_data=reg_b10;
    12'hb14 : reg_MFUNC_TOP_rd_data=reg_b14;
    12'hb18 : reg_MFUNC_TOP_rd_data=reg_b18;
    12'hb1C : reg_MFUNC_TOP_rd_data=reg_b1C;
    12'hb20 : reg_MFUNC_TOP_rd_data=reg_b20;
    12'hb24 : reg_MFUNC_TOP_rd_data=reg_b24;
    12'hb28 : reg_MFUNC_TOP_rd_data=reg_b28;
    12'hb2C : reg_MFUNC_TOP_rd_data=reg_b2C;
    12'hb30 : reg_MFUNC_TOP_rd_data=reg_b30;
    12'hb34 : reg_MFUNC_TOP_rd_data=reg_b34;
    12'hb38 : reg_MFUNC_TOP_rd_data=reg_b38;
    12'hb3C : reg_MFUNC_TOP_rd_data=reg_b3C;
    12'hb40 : reg_MFUNC_TOP_rd_data=reg_b40;
    12'hb44 : reg_MFUNC_TOP_rd_data=reg_b44;
    12'hb48 : reg_MFUNC_TOP_rd_data=reg_b48;
    12'hb4c : reg_MFUNC_TOP_rd_data=reg_b4c;
    12'hb50 : reg_MFUNC_TOP_rd_data=reg_b50;
    12'hb54 : reg_MFUNC_TOP_rd_data=reg_b54;
    12'hb58 : reg_MFUNC_TOP_rd_data=reg_b58;
    12'hb5C : reg_MFUNC_TOP_rd_data=reg_b5C;
    12'hb60 : reg_MFUNC_TOP_rd_data=reg_b60;
    12'hb64 : reg_MFUNC_TOP_rd_data=reg_b64;
    12'hb68 : reg_MFUNC_TOP_rd_data=reg_b68;
    12'hb6C : reg_MFUNC_TOP_rd_data=reg_b6C;
    12'hb70 : reg_MFUNC_TOP_rd_data=reg_b70;
    default : reg_MFUNC_TOP_rd_data=32'ha5a5_a5a5;
    endcase
end
endmodule
