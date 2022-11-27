
//---------------------------------------------------------------
// Jared Hermans
//---------------------------------------------------------------
`timescale 1 ns / 1 ps

module tlast_gen_tb();

  localparam                        CLOCK_PERIOD      = 4;

  logic                             r_clk;
  logic                             r_nRst;

  logic [127:0]                     in_axis_tdata     = '0;
  logic                             in_axis_tlast     = 1'b0;
  logic                             in_axis_tvalid    = 1'b0;
  logic                             r_start;

//---------------------------------------------------------------
// DUT
//---------------------------------------------------------------
  tlast_gen DUT (
    .axis_aclk                      (r_clk),
    .axis_aresetn                   (r_nRst),

    .i_start                        (r_start),

    .m_axis_tdata                   (),
    .m_axis_tlast                   (),
    .m_axis_tvalid                  (),

    .s_axis_tdata                   (in_axis_tdata),
    .s_axis_tvalid                  (in_axis_tvalid),
    .s_axis_tready                  ()
  );
    
//---------------------------------------------------------------
// Drive Clock
//---------------------------------------------------------------
  initial begin
    r_clk                           = 1'b1;
    forever begin
      #(CLOCK_PERIOD/2) r_clk       = ~r_clk;
    end
  end

//---------------------------------------------------------------
// Stimulate design
//---------------------------------------------------------------
  initial begin
    r_nRst                          <= 1'b0;
    r_start                         <= 1'b0;
    in_axis_tdata                   <= 0;
    in_axis_tvalid                  <= 1'b0;
    #(CLOCK_PERIOD*2);
    r_nRst                          <= 1'b1;
    #(CLOCK_PERIOD*10);
    r_start                         <= 1'b1;
    #(CLOCK_PERIOD*2);
    in_axis_tvalid                  <= 1'b1;
    for (int i = 0; i < 1280*4; i++) begin
      in_axis_tdata                 <= in_axis_tdata + 1'b1;
      #CLOCK_PERIOD;
    end
    in_axis_tvalid                  <= 1'b0;
    #(CLOCK_PERIOD*10);
    $stop;
  end

endmodule
    

