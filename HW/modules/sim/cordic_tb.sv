//---------------------------------------------------------------
// Jared Hermans
//---------------------------------------------------------------
`timescale 1 ns / 1 ps

module cordic_tb();

  localparam                        CLOCK_PERIOD      = 4;
  localparam                        CLOCK_CYCLE       = CLOCK_PERIOD/2;

  int                               fd;

  logic                             r_clk;
  logic                             r_nRst;

  logic [31:0]                      phase_tdata;
  logic                             phase_tvalid;

  logic [31:0]                      out_tdata;
  logic                             out_tvalid;

  logic [15:0]                      out_i,out_q;
  
//---------------------------------------------------------------
// DUT
//---------------------------------------------------------------
//  dds_top DUT (
//    .axis_aclk                      (r_clk),
//    .axis_aresetn                   (r_nRst),

//    .s_axis_tdata                   (phase_tdata),
 //   .s_axis_tvalid                  (phase_tvalid),
 //   .s_axis_tuser                   (0),
 //   .s_axis_tid                     (0),
 //   .s_axis_tlast                   (0),

 //   .m_axis_tdata                   (out_tdata),
 //   .m_axis_tvalid                  (out_tvalid),
 //   .m_axis_tuser                   (0),
 //   .m_axis_tid                     (0),
 //   .m_axis_tlast                   (0)
 // );

  cordic_1 DUT (
    .aclk                           (r_clk),
    .s_axis_phase_tvalid            (phase_tvalid),
    .s_axis_phase_tdata             (phase_tdata),
    .m_axis_dout_tvalid             (out_tvalid),
    .m_axis_dout_tdata              (out_tdata)
  );

//---------------------------------------------------------------
// Drive Clock
//---------------------------------------------------------------
  initial begin
    r_clk                           = 1'b1;
    forever begin
      #CLOCK_CYCLE r_clk            = ~r_clk;
    end
  end

//---------------------------------------------------------------
// Drive Clock
//---------------------------------------------------------------
  initial begin
    fd = $fopen("../../../../../modules/sim/cfo_tone.txt","w");
    if (fd) $display("File was opened successfully: %0d ",fd);
    else begin
      $display("File was NOT opened successfully: %0d",fd);
      $stop;
    end

  $fclose;

  end

//---------------------------------------------------------------
// Stimulate design
//---------------------------------------------------------------
  initial begin
    
    phase_tvalid                    <= 0;
    phase_tdata                     <= 0;
    #CLOCK_PERIOD;
    phase_tvalid                    <= 1;
    phase_tdata                     <= 32'hCDBC_09E7;

    #(CLOCK_PERIOD*400);

    $stop;
  end

  assign out_i                      = out_tdata[15:0];
  assign out_q                      = out_tdata[32:16];

endmodule
