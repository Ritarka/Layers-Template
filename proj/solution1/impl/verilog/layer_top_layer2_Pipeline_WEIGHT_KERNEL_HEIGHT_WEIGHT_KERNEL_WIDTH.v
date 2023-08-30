// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Version: 2022.2.2
// Copyright (C) Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module layer_top_layer2_Pipeline_WEIGHT_KERNEL_HEIGHT_WEIGHT_KERNEL_WIDTH (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_wt_AWVALID,
        m_axi_wt_AWREADY,
        m_axi_wt_AWADDR,
        m_axi_wt_AWID,
        m_axi_wt_AWLEN,
        m_axi_wt_AWSIZE,
        m_axi_wt_AWBURST,
        m_axi_wt_AWLOCK,
        m_axi_wt_AWCACHE,
        m_axi_wt_AWPROT,
        m_axi_wt_AWQOS,
        m_axi_wt_AWREGION,
        m_axi_wt_AWUSER,
        m_axi_wt_WVALID,
        m_axi_wt_WREADY,
        m_axi_wt_WDATA,
        m_axi_wt_WSTRB,
        m_axi_wt_WLAST,
        m_axi_wt_WID,
        m_axi_wt_WUSER,
        m_axi_wt_ARVALID,
        m_axi_wt_ARREADY,
        m_axi_wt_ARADDR,
        m_axi_wt_ARID,
        m_axi_wt_ARLEN,
        m_axi_wt_ARSIZE,
        m_axi_wt_ARBURST,
        m_axi_wt_ARLOCK,
        m_axi_wt_ARCACHE,
        m_axi_wt_ARPROT,
        m_axi_wt_ARQOS,
        m_axi_wt_ARREGION,
        m_axi_wt_ARUSER,
        m_axi_wt_RVALID,
        m_axi_wt_RREADY,
        m_axi_wt_RDATA,
        m_axi_wt_RLAST,
        m_axi_wt_RID,
        m_axi_wt_RFIFONUM,
        m_axi_wt_RUSER,
        m_axi_wt_RRESP,
        m_axi_wt_BVALID,
        m_axi_wt_BREADY,
        m_axi_wt_BRESP,
        m_axi_wt_BID,
        m_axi_wt_BUSER,
        sext_ln75,
        conv_wt_buf_V_address0,
        conv_wt_buf_V_ce0,
        conv_wt_buf_V_we0,
        conv_wt_buf_V_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_wt_AWVALID;
input   m_axi_wt_AWREADY;
output  [63:0] m_axi_wt_AWADDR;
output  [0:0] m_axi_wt_AWID;
output  [31:0] m_axi_wt_AWLEN;
output  [2:0] m_axi_wt_AWSIZE;
output  [1:0] m_axi_wt_AWBURST;
output  [1:0] m_axi_wt_AWLOCK;
output  [3:0] m_axi_wt_AWCACHE;
output  [2:0] m_axi_wt_AWPROT;
output  [3:0] m_axi_wt_AWQOS;
output  [3:0] m_axi_wt_AWREGION;
output  [0:0] m_axi_wt_AWUSER;
output   m_axi_wt_WVALID;
input   m_axi_wt_WREADY;
output  [15:0] m_axi_wt_WDATA;
output  [1:0] m_axi_wt_WSTRB;
output   m_axi_wt_WLAST;
output  [0:0] m_axi_wt_WID;
output  [0:0] m_axi_wt_WUSER;
output   m_axi_wt_ARVALID;
input   m_axi_wt_ARREADY;
output  [63:0] m_axi_wt_ARADDR;
output  [0:0] m_axi_wt_ARID;
output  [31:0] m_axi_wt_ARLEN;
output  [2:0] m_axi_wt_ARSIZE;
output  [1:0] m_axi_wt_ARBURST;
output  [1:0] m_axi_wt_ARLOCK;
output  [3:0] m_axi_wt_ARCACHE;
output  [2:0] m_axi_wt_ARPROT;
output  [3:0] m_axi_wt_ARQOS;
output  [3:0] m_axi_wt_ARREGION;
output  [0:0] m_axi_wt_ARUSER;
input   m_axi_wt_RVALID;
output   m_axi_wt_RREADY;
input  [15:0] m_axi_wt_RDATA;
input   m_axi_wt_RLAST;
input  [0:0] m_axi_wt_RID;
input  [9:0] m_axi_wt_RFIFONUM;
input  [0:0] m_axi_wt_RUSER;
input  [1:0] m_axi_wt_RRESP;
input   m_axi_wt_BVALID;
output   m_axi_wt_BREADY;
input  [1:0] m_axi_wt_BRESP;
input  [0:0] m_axi_wt_BID;
input  [0:0] m_axi_wt_BUSER;
input  [62:0] sext_ln75;
output  [3:0] conv_wt_buf_V_address0;
output   conv_wt_buf_V_ce0;
output   conv_wt_buf_V_we0;
output  [15:0] conv_wt_buf_V_d0;

reg ap_idle;
reg m_axi_wt_RREADY;
reg conv_wt_buf_V_ce0;
reg conv_wt_buf_V_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln73_fu_122_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    wt_blk_n_R;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
reg   [15:0] wt_addr_read_reg_252;
wire   [63:0] zext_ln78_2_fu_201_p1;
reg   [1:0] kw_fu_58;
wire   [1:0] add_ln76_fu_206_p2;
wire    ap_loop_init;
reg   [1:0] kh_fu_62;
wire   [1:0] select_ln73_1_fu_165_p3;
reg   [3:0] indvar_flatten492_fu_66;
wire   [3:0] add_ln73_1_fu_128_p2;
reg   [3:0] ap_sig_allocacmp_indvar_flatten492_load;
wire   [0:0] icmp_ln76_fu_151_p2;
wire   [1:0] add_ln73_fu_145_p2;
wire   [3:0] tmp_s_fu_177_p3;
wire   [3:0] zext_ln78_fu_173_p1;
wire   [1:0] select_ln73_fu_157_p3;
wire   [3:0] sub_ln78_fu_185_p2;
wire   [3:0] zext_ln78_1_fu_191_p1;
wire   [3:0] add_ln78_fu_195_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end

layer_top_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln73_fu_122_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten492_fu_66 <= add_ln73_1_fu_128_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten492_fu_66 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            kh_fu_62 <= 2'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            kh_fu_62 <= select_ln73_1_fu_165_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            kw_fu_58 <= 2'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            kw_fu_58 <= add_ln76_fu_206_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        wt_addr_read_reg_252 <= m_axi_wt_RDATA;
    end
end

always @ (*) begin
    if (((icmp_ln73_fu_122_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten492_load = 4'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten492_load = indvar_flatten492_fu_66;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        conv_wt_buf_V_ce0 = 1'b1;
    end else begin
        conv_wt_buf_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        conv_wt_buf_V_we0 = 1'b1;
    end else begin
        conv_wt_buf_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_axi_wt_RREADY = 1'b1;
    end else begin
        m_axi_wt_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        wt_blk_n_R = m_axi_wt_RVALID;
    end else begin
        wt_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln73_1_fu_128_p2 = (ap_sig_allocacmp_indvar_flatten492_load + 4'd1);

assign add_ln73_fu_145_p2 = (kh_fu_62 + 2'd1);

assign add_ln76_fu_206_p2 = (select_ln73_fu_157_p3 + 2'd1);

assign add_ln78_fu_195_p2 = (sub_ln78_fu_185_p2 + zext_ln78_1_fu_191_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((m_axi_wt_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((m_axi_wt_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (m_axi_wt_RVALID == 1'b0);
end

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign conv_wt_buf_V_address0 = zext_ln78_2_fu_201_p1;

assign conv_wt_buf_V_d0 = wt_addr_read_reg_252;

assign icmp_ln73_fu_122_p2 = ((ap_sig_allocacmp_indvar_flatten492_load == 4'd9) ? 1'b1 : 1'b0);

assign icmp_ln76_fu_151_p2 = ((kw_fu_58 == 2'd3) ? 1'b1 : 1'b0);

assign m_axi_wt_ARADDR = 64'd0;

assign m_axi_wt_ARBURST = 2'd0;

assign m_axi_wt_ARCACHE = 4'd0;

assign m_axi_wt_ARID = 1'd0;

assign m_axi_wt_ARLEN = 32'd0;

assign m_axi_wt_ARLOCK = 2'd0;

assign m_axi_wt_ARPROT = 3'd0;

assign m_axi_wt_ARQOS = 4'd0;

assign m_axi_wt_ARREGION = 4'd0;

assign m_axi_wt_ARSIZE = 3'd0;

assign m_axi_wt_ARUSER = 1'd0;

assign m_axi_wt_ARVALID = 1'b0;

assign m_axi_wt_AWADDR = 64'd0;

assign m_axi_wt_AWBURST = 2'd0;

assign m_axi_wt_AWCACHE = 4'd0;

assign m_axi_wt_AWID = 1'd0;

assign m_axi_wt_AWLEN = 32'd0;

assign m_axi_wt_AWLOCK = 2'd0;

assign m_axi_wt_AWPROT = 3'd0;

assign m_axi_wt_AWQOS = 4'd0;

assign m_axi_wt_AWREGION = 4'd0;

assign m_axi_wt_AWSIZE = 3'd0;

assign m_axi_wt_AWUSER = 1'd0;

assign m_axi_wt_AWVALID = 1'b0;

assign m_axi_wt_BREADY = 1'b0;

assign m_axi_wt_WDATA = 16'd0;

assign m_axi_wt_WID = 1'd0;

assign m_axi_wt_WLAST = 1'b0;

assign m_axi_wt_WSTRB = 2'd0;

assign m_axi_wt_WUSER = 1'd0;

assign m_axi_wt_WVALID = 1'b0;

assign select_ln73_1_fu_165_p3 = ((icmp_ln76_fu_151_p2[0:0] == 1'b1) ? add_ln73_fu_145_p2 : kh_fu_62);

assign select_ln73_fu_157_p3 = ((icmp_ln76_fu_151_p2[0:0] == 1'b1) ? 2'd0 : kw_fu_58);

assign sub_ln78_fu_185_p2 = (tmp_s_fu_177_p3 - zext_ln78_fu_173_p1);

assign tmp_s_fu_177_p3 = {{select_ln73_1_fu_165_p3}, {2'd0}};

assign zext_ln78_1_fu_191_p1 = select_ln73_fu_157_p3;

assign zext_ln78_2_fu_201_p1 = add_ln78_fu_195_p2;

assign zext_ln78_fu_173_p1 = select_ln73_1_fu_165_p3;

endmodule //layer_top_layer2_Pipeline_WEIGHT_KERNEL_HEIGHT_WEIGHT_KERNEL_WIDTH
