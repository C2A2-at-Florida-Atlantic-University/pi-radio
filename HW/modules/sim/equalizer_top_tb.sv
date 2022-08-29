//---------------------------------------------------------------
// Jared Hermans
//---------------------------------------------------------------
`timescale 1 ns / 1 ps

module equalizer_top_tb();

  logic [127:0]                     in_axis_tdata     = '0;
  logic [7:0]                       in_axis_tid       = '0;
  logic                             in_axis_tlast     = 1'b0;
  logic [7:0]                       in_axis_tuser     = '0;
  logic                             in_axis_tvalid    = 1'b0;

//---------------------------------------------------------------
// DUT
//---------------------------------------------------------------
  design_1_wrapper DUT (
    .s_axis_aclk_0          (r_clk),
    .s_axis_aresetn_0       (r_nRst),
    
    .s_equalizer_in_axis_0_tdata    (in_axis_tdata),
    .s_equalizer_in_axis_0_tid      (in_axis_tid),
    .s_equalizer_in_axis_0_tlast    (in_axis_tlast),
    .s_equalizer_in_axis_0_tuser    (in_axis_tuser),
    .s_equalizer_in_axis_0_tvalid   (in_axis_tvalid)
  );

//---------------------------------------------------------------
// Drive Clock
//---------------------------------------------------------------
  initial begin
    clk = 1'b1;
    forever begin
      #2 r_clk                      = ~r_clk;
    end
  end

//---------------------------------------------------------------
// Stimulate design
//---------------------------------------------------------------
  initial begin
    r_nRst                          = 1'b0;
    #4;
    r_nRst                          = 1'b1;
    #100 $Stop;
  end
endmodule
