module CFG_MUX ( /*AUTOARG*/
   // Outputs
   reg_rd_data, reg_rd_data_vld, sub_reg_addr, reg_wait_request,
   reg_MFUNC_TOP_wr_en,
   // Inputs
   clk, rst_n, reg_wr_en, reg_rd_en, reg_byte_enable, reg_addr,
   reg_MFUNC_TOP_rd_data
   );
input         clk;
input         rst_n;
input         reg_wr_en;
input         reg_rd_en;
input  [ 3:0] reg_byte_enable;
input  [13:0] reg_addr;
output [31:0] reg_rd_data;
output        reg_rd_data_vld;
output [11:0] sub_reg_addr;
output        reg_wait_request;
input  [31:0] reg_MFUNC_TOP_rd_data;
output        reg_MFUNC_TOP_wr_en;
/////////////////////////////////////////////////////
reg [31:0] reg_rd_data;
reg        reg_rd_data_vld;
wire       reg_wait_request;
assign     reg_wait_request  =  ~reg_wr_en && ~reg_rd_en ;
assign  reg_MFUNC_TOP_wr_en =  reg_wr_en&&(reg_addr[13:12]==2'b00);
assign  sub_reg_addr =  reg_addr[11:0];
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_rd_data<='d0;
    end
    else  begin
        case(reg_addr[13:12]) 
        2'b00 : reg_rd_data<=reg_MFUNC_TOP_rd_data;
        default : reg_rd_data<=32'h5a5a_5a5a;
        endcase
    end
end
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
       reg_rd_data_vld<='d0;
    end
    else if ( reg_rd_en )  begin
        case(reg_addr[13:12]) 
        2'b00 : reg_rd_data_vld<=1'd1;
        default : reg_rd_data_vld<=1'd1;
        endcase
    end
    else begin
        reg_rd_data_vld<=1'd0;
    end
end
endmodule
