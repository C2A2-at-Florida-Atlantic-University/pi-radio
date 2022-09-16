//---------------------------------------------------------------
// Jared Hermans
//---------------------------------------------------------------
`timescale 1 ns / 1 ps

module dds_tb();

  localparam                        CLOCK_PERIOD      = 4;
  localparam                        CLOCK_CYCLE       = CLOCK_PERIOD/2;

  int                               fd;
  
  logic                             r_clk;
  logic                             r_nRst;

  logic [31:0]                      phase_tdata;
  logic                             phase_tvalid;

  logic [31:0]                      out_tdata;
  logic                             out_tvalid;

  logic [15:0]                      out_1i,out_1q;
  logic [15:0]                      out_2i,out_2q;
  logic [15:0]                      out_3i,out_3q;
  logic [15:0]                      out_4i,out_4q;
  
//---------------------------------------------------------------
// DUT
//---------------------------------------------------------------
 // dds_compiler_0 DUT (
 //   .aclk                     (r_clk),
 //   .s_axis_phase_tvalid      (phase_tvalid),
 //   .s_axis_phase_tdata       (phase_tdata),
 //   .m_axis_data_tvalid       (out_tvalid),
 //   .m_axis_data_tdata        (out_tdata)
 // );
  dds_top DUT (
    .axis_aclk                      (r_clk),
    .axis_aresetn                   (r_nRst),
    .s_axis_tdata                   (phase_tdata),
    .s_axis_tvalid                  (phase_tvalid),
    .s_axis_tuser                   (0),
    .s_axis_tid                     (0),
    .s_axis_tlast                   (0),

    .m_axis_tdata                   (out_tdata),
    .m_axis_tvalid                  (out_tvalid),
    .m_axis_tuser                   (),
    .m_axis_tid                     (),
    .m_axis_tlast                   ()
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
// Capture waveform
//---------------------------------------------------------------
  initial begin
    fd = $fopen("../../../../../modules/sim/cfo_tone.txt","w");
    if (fd) $display("File was opened successfully: %0d ",fd);
    else begin
      $display("File was NOT opened successfully: %0d",fd);
      $stop;
    end
  
  #(CLOCK_PERIOD*8);
  
  for (int i = 0; i < 256; i++) begin
    $fdisplay(fd,"%d, %d\n%d, %d\n%d, %d\n%d, %d",out_tdata[15:0],
      out_tdata[31:16],out_tdata[47:32],out_tdata[63:48],
      out_tdata[79:64],out_tdata[95:80],out_tdata[111:96],out_tdata[127:112]);
    #CLOCK_PERIOD;
  end

  $fclose(fd);

  end
    
//---------------------------------------------------------------
// Stimulate design
//---------------------------------------------------------------
  initial begin
    
    phase_tvalid                    <= 0;
    phase_tdata                     <= 0;
    #CLOCK_PERIOD;
    phase_tvalid                    <= 1;
    //phase_tdata                     <= 0 - 32'hCDBC_09E7;
    //phase_tdata                     <= 32'h0040_0000;
    phase_tdata                     <= 32'hFFC0_0000;

    #(CLOCK_PERIOD*400);

    $stop;
  end

  assign out_1i                     = out_tdata[15:0];
  assign out_1q                     = out_tdata[31:16];
 // assign out_2i                     = out_tdata[47:32];
 // assign out_2q                     = out_tdata[63:48];
 // assign out_3i                     = out_tdata[79:64];
 // assign out_3q                     = out_tdata[95:80];
 // assign out_4i                     = out_tdata[111:96];
//  assign out_4q                     = out_tdata[127:112];

endmodule
