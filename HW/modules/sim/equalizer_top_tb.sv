//---------------------------------------------------------------
// Jared Hermans
//---------------------------------------------------------------
`timescale 1 ns / 1 ps

module equalizer_top_tb();

  localparam                        CLOCK_PERIOD      = 4;
  localparam                        CLOCK_CYCLE       = 2;

  int                               fd;
  string                            line;
  logic [16:0]                      i_data1,q_data1;
  logic [16:0]                      i_data2,q_data2;
  logic [16:0]                      i_data3,q_data3;
  logic [16:0]                      i_data4,q_data4;

  logic                             r_clk;
  logic                             r_nRst;

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
    
    .s_axis_0_tdata                 (in_axis_tdata),
    .s_axis_0_tid                   (in_axis_tid),
    .s_axis_0_tlast                 (in_axis_tlast),
    .s_axis_0_tuser                 (in_axis_tuser),
    .s_axis_0_tvalid                (in_axis_tvalid)
  );

//---------------------------------------------------------------
// Drive Clock
//---------------------------------------------------------------
  initial begin
    r_clk                           = 1'b1;
    forever begin
      #CLOCK_CYCLE r_clk         = ~r_clk;
    end
  end

//---------------------------------------------------------------
// Stimulate design
//---------------------------------------------------------------
  initial begin
    //fd = $fopen("../../../../../modules/sim/cw_input_samples.txt","r");
    fd = $fopen("../../../../../modules/sim/equalizer_input_samples.txt","r");
    if (fd) $display("File was opened successfully: %0d ",fd);
    else begin   
      $display("File was NOT opened successfully: %0d",fd);
      $stop;
    end
  
    r_nRst                          = 1'b0;
    #CLOCK_PERIOD;
    r_nRst                          = 1'b1;
    #(4*CLOCK_PERIOD);
    in_axis_tlast                   = 1'b1;
    #CLOCK_PERIOD;
    in_axis_tvalid                  = 1'b1;
    in_axis_tuser                   = '0;
    in_axis_tlast                   = 1'b0;
    in_axis_tid                     = '0;

    for (int i = 0; i < 320; i++) begin
      //$fgets(line,fd);
      $fscanf(fd,"%d, %d",i_data1,q_data1);
      $fscanf(fd,"%d, %d",i_data2,q_data2);
      $fscanf(fd,"%d, %d",i_data3,q_data3);
      $fscanf(fd,"%d, %d",i_data4,q_data4);
      if (i == 0) begin
        $display("Printing Samples");
        $display("%d + i%d",i_data1,q_data1);
        $display("%d + i%d",i_data2,q_data2);
        $display("%d + i%d",i_data3,q_data3);
        $display("%d + i%d",i_data4,q_data4);
      end
      in_axis_tdata                 = {q_data4,i_data4,q_data3,i_data3,
                                       q_data2,i_data2,q_data1,i_data1};
      if (i == 319)
        in_axis_tlast               = 1'b1;
      #CLOCK_PERIOD;
    end
    
    in_axis_tlast                   = 1'b0;
    #200 $stop;
  end

endmodule
