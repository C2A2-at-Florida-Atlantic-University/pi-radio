//---------------------------------------------------------------
// Jared Hermans
//---------------------------------------------------------------
`timescale 1 ns / 1 ps

module equalizer_top_tb();

  localparam                        CLOCK_PERIOD      = 4;
  localparam                        CLOCK_CYCLE       = 2;
  localparam                        c_PRECISION       = 32;

  int                               fd;
  int                               fd_mult1;
  int                               fd_mult2;
  int                               fd_mult_out;
  int                               fd_mult_out_verif;
  int                               fd_sum;
  int                               fd_angle;

  string                            line;
  logic [15:0]                      i_data1,q_data1;
  logic [15:0]                      i_data2,q_data2;
  logic [15:0]                      i_data3,q_data3;
  logic [15:0]                      i_data4,q_data4;

  logic                             r_clk;
  logic                             r_nRst;

  logic [127:0]                     in_axis_tdata     = '0;
  logic [7:0]                       in_axis_tid       = '0;
  logic                             in_axis_tlast     = 1'b0;
  logic [7:0]                       in_axis_tuser     = '0;
  logic                             in_axis_tvalid    = 1'b0;

  logic [15:0]                      mult0_i_data1,mult0_q_data1;
  logic [15:0]                      mult0_i_data2,mult0_q_data2;
  logic [15:0]                      mult0_i_data3,mult0_q_data3;
  logic [15:0]                      mult0_i_data4,mult0_q_data4;

  logic [15:0]                      mult1_i_data1,mult1_q_data1;
  logic [15:0]                      mult1_i_data2,mult1_q_data2;
  logic [15:0]                      mult1_i_data3,mult1_q_data3;
  logic [15:0]                      mult1_i_data4,mult1_q_data4;

  logic [31:0]                      mult_out_i_data1,mult_out_q_data1;
  logic [31:0]                      mult_out_i_data2,mult_out_q_data2;
  logic [31:0]                      mult_out_i_data3,mult_out_q_data3;
  logic [31:0]                      mult_out_i_data4,mult_out_q_data4;

  logic [39:0]                      sum_i, sum_q;

  logic [39:0]                      angle;
  real                              cordic_out_print;

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
      #CLOCK_CYCLE r_clk            = ~r_clk;
    end
  end

//---------------------------------------------------------------
// Function to convert FIX data type of cordic output
//---------------------------------------------------------------
  function real read_cordic_out;
    input bit [c_PRECISION:0] cordic_out;
    read_cordic_out                 = 1.23;
  endfunction

//---------------------------------------------------------------
// Scoreboard multiplier input
//---------------------------------------------------------------
  initial begin
    fd_mult1 = $fopen("../../../../../modules/sim/cp_conj_samples.txt","r");
    fd_mult2 = $fopen("../../../../../modules/sim/cp_end_samples.txt","r");
    if (fd_mult1) $display("File was opened successfully: %0d ",fd_mult1);
    else begin
      $display("File was NOT opened successfully: %d",fd_mult1);
      $stop;
    end
    if (fd_mult2) $display("File was opened successfully: %0d ",fd_mult2);
    else begin
      $display("File was NOT opened successfully: %d",fd_mult2);
      $stop;
    end

    #(267*CLOCK_PERIOD);
    // Check every IQ sample of multiplier input
    for (int i = 0; i < 64; i++) begin
      $fscanf(fd_mult1,"%d, %d\n%d, %d\n%d, %d\n%d, %d\n",mult0_i_data1,mult0_q_data1,mult0_i_data2,mult0_q_data2,
                              mult0_i_data3,mult0_q_data3,mult0_i_data4,mult0_q_data4);
      if (DUT.design_1_i.complex_mult_0.s_axis0_tdata[15:0] != mult0_i_data1) begin
        $display("ERROR: mult sum input sample %d",i);
        $display("Mult in A I0: %d", $signed(DUT.design_1_i.complex_mult_0.s_axis0_tdata[15:0]));
        $display("Expected: %d", $signed(mult0_i_data1));
      end
      if (DUT.design_1_i.complex_mult_0.s_axis0_tdata[31:16] != mult0_q_data1) begin
        $display("ERROR: mult sum input sample %d",i);
        $display("Mult in A Q0: %d", $signed(DUT.design_1_i.complex_mult_0.s_axis0_tdata[31:16]));
        $display("Expected: %d", $signed(mult0_q_data1));
      end
      if (DUT.design_1_i.complex_mult_0.s_axis0_tdata[47:32] != mult0_i_data2) begin
        $display("ERROR: mult sum input sample %d",i);
        $display("Mult in A I1: %d", $signed(DUT.design_1_i.complex_mult_0.s_axis0_tdata[47:32]));
        $display("Expected: %d", $signed(mult0_i_data2));
      end
      if (DUT.design_1_i.complex_mult_0.s_axis0_tdata[63:48] != mult0_q_data2) begin
        $display("ERROR: mult sum input sample %d",i);
        $display("Mult in A Q1: %d", $signed(DUT.design_1_i.complex_mult_0.s_axis0_tdata[63:48]));
        $display("Expected: %d", $signed(mult0_q_data2));
      end
      if (DUT.design_1_i.complex_mult_0.s_axis0_tdata[79:64] != mult0_i_data3) begin
        $display("ERROR: mult sum input sample %d",i);
        $display("Mult in A I2: %d", $signed(DUT.design_1_i.complex_mult_0.s_axis0_tdata[79:64]));
        $display("Expected: %d", $signed(mult0_i_data3));
      end
      if (DUT.design_1_i.complex_mult_0.s_axis0_tdata[95:80] != mult0_q_data3) begin
        $display("ERROR: mult sum input sample %d",i);
        $display("Mult in A Q2: %d", $signed(DUT.design_1_i.complex_mult_0.s_axis0_tdata[95:80]));
        $display("Expected: %d", $signed(mult0_q_data3));
      end
      if (DUT.design_1_i.complex_mult_0.s_axis0_tdata[111:96] != mult0_i_data4) begin
        $display("ERROR: mult sum input sample %d",i);
        $display("Mult in A I3: %d", $signed(DUT.design_1_i.complex_mult_0.s_axis0_tdata[111:96]));
        $display("Expected: %d", $signed(mult0_i_data4));
      end
      if (DUT.design_1_i.complex_mult_0.s_axis0_tdata[127:112] != mult0_q_data4) begin
        $display("ERROR: mult sum input sample %d",i);
        $display("Mult in A Q3: %d", $signed(DUT.design_1_i.complex_mult_0.s_axis0_tdata[127:112]));
        $display("Expected: %d", $signed(mult0_q_data4));
      end

      $fscanf(fd_mult2,"%d, %d\n%d, %d\n%d, %d\n%d, %d\n",mult1_i_data1,mult1_q_data1,mult1_i_data2,mult1_q_data2,
                              mult1_i_data3,mult1_q_data3,mult1_i_data4,mult1_q_data4);
      if (DUT.design_1_i.complex_mult_0.s_axis1_tdata[15:0] != mult1_i_data1) begin
        $display("ERROR: mult sum input sample %d",i);
        $display("Mult in B I0: %d", $signed(DUT.design_1_i.complex_mult_0.s_axis1_tdata[15:0]));
        $display("Expected: %d", $signed(mult1_i_data1));
      end
      if (DUT.design_1_i.complex_mult_0.s_axis1_tdata[31:16] != mult1_q_data1) begin
        $display("ERROR: mult sum input sample %d",i);
        $display("Mult in B Q0: %d", $signed(DUT.design_1_i.complex_mult_0.s_axis1_tdata[31:16]));
        $display("Expected: %d", $signed(mult1_q_data1));
      end
      if (DUT.design_1_i.complex_mult_0.s_axis1_tdata[47:32] != mult1_i_data2) begin
        $display("ERROR: mult sum input sample %d",i);
        $display("Mult in B I1: %d", $signed(DUT.design_1_i.complex_mult_0.s_axis1_tdata[47:32]));
        $display("Expected: %d", $signed(mult1_i_data2));
      end
      if (DUT.design_1_i.complex_mult_0.s_axis1_tdata[63:48] != mult1_q_data2) begin
        $display("ERROR: mult sum input sample %d",i);
        $display("Mult in B Q1: %d", $signed(DUT.design_1_i.complex_mult_0.s_axis1_tdata[63:48]));
        $display("Expected: %d", $signed(mult1_q_data2));
      end
      if (DUT.design_1_i.complex_mult_0.s_axis1_tdata[79:64] != mult1_i_data3) begin
        $display("ERROR: mult sum input sample %d",i);
        $display("Mult in B I2: %d", $signed(DUT.design_1_i.complex_mult_0.s_axis1_tdata[79:64]));
        $display("Expected: %d", $signed(mult1_i_data3));
      end
      if (DUT.design_1_i.complex_mult_0.s_axis1_tdata[95:80] != mult1_q_data3) begin
        $display("ERROR: mult sum input sample %d",i);
        $display("Mult in B Q2: %d", $signed(DUT.design_1_i.complex_mult_0.s_axis1_tdata[95:80]));
        $display("Expected: %d", $signed(mult1_q_data3));
      end
      if (DUT.design_1_i.complex_mult_0.s_axis1_tdata[111:96] != mult1_i_data4) begin
        $display("ERROR: mult sum input sample %d",i);
        $display("Mult in B I3: %d", $signed(DUT.design_1_i.complex_mult_0.s_axis1_tdata[111:96]));
        $display("Expected: %d", $signed(mult1_i_data4));
      end
      if (DUT.design_1_i.complex_mult_0.s_axis1_tdata[127:112] != mult1_q_data4) begin
        $display("ERROR: mult sum input sample %d",i);
        $display("Mult in B Q3: %d", $signed(DUT.design_1_i.complex_mult_0.s_axis1_tdata[127:112]));
        $display("Expected: %d", $signed(mult1_q_data4));
      end
      #CLOCK_PERIOD;
    end
    $fclose(fd_mult1);
    $fclose(fd_mult2);
  end

//---------------------------------------------------------------
// Scoreboard multiplier output
//---------------------------------------------------------------
  initial begin
    fd_mult_out = $fopen("../../../../../modules/sim/mult_samples.txt","r");
    fd_mult_out_verif = $fopen("../../../../../modules/sim/mult_verif_samples.txt","w");
    if (fd_mult_out) $display("File was opened successfully: %0d ",fd_mult_out);
    else begin
      $display("File was NOT opened successfully: %0d",fd_mult_out);
      $stop;
    end
    if (fd_mult_out_verif) $display("File was opened successfully: %0d ",fd_mult_out_verif);
    else begin
      $display("File was NOT opened successfully: %0d", fd_mult_out_verif);
      $stop;
    end

    #(273*CLOCK_PERIOD);
    for (int i = 0; i < 64; i++) begin
      $fscanf(fd_mult_out,"%d, %d\n%d, %d\n%d, %d\n%d, %d\n",mult_out_i_data1,mult_out_q_data1,
              mult_out_i_data2,mult_out_q_data2,mult_out_i_data3,mult_out_q_data3,
              mult_out_i_data4,mult_out_q_data4);
      $fdisplay(fd_mult_out_verif,"%d, %d\n%d, %d\n%d, %d\n%d, %d",
        $signed(DUT.design_1_i.complex_mult_0.m_axis_tdata[31:0]),
        $signed(DUT.design_1_i.complex_mult_0.m_axis_tdata[63:32]),
        $signed(DUT.design_1_i.complex_mult_0.m_axis_tdata[95:64]),
        $signed(DUT.design_1_i.complex_mult_0.m_axis_tdata[127:96]),
        $signed(DUT.design_1_i.complex_mult_0.m_axis_tdata[159:128]),
        $signed(DUT.design_1_i.complex_mult_0.m_axis_tdata[191:160]),
        $signed(DUT.design_1_i.complex_mult_0.m_axis_tdata[223:192]),
        $signed(DUT.design_1_i.complex_mult_0.m_axis_tdata[255:224]));
      if (DUT.design_1_i.complex_mult_0.m_axis_tdata[31:0] != mult_out_i_data1) begin
        $display("ERROR: mult output sample %d",i);
        $display("Mult out I0: %d", $signed(DUT.design_1_i.complex_mult_0.m_axis_tdata[31:0]));
        $display("Expected: %d", $signed(mult_out_i_data1));
      end
      if (DUT.design_1_i.complex_mult_0.m_axis_tdata[63:32] != mult_out_q_data1) begin
        $display("ERROR: mult output sample %d",i);
        $display("Mult out Q0: %d", $signed(DUT.design_1_i.complex_mult_0.m_axis_tdata[63:32]));
        $display("Expected: %d", $signed(mult_out_q_data1));
      end
      if (DUT.design_1_i.complex_mult_0.m_axis_tdata[95:64] != mult_out_i_data2) begin
        $display("ERROR: mult output sample %d",i);
        $display("Mult out I1: %d", $signed(DUT.design_1_i.complex_mult_0.m_axis_tdata[95:64]));
        $display("Expected: %d", $signed(mult_out_i_data2));
      end
      if (DUT.design_1_i.complex_mult_0.m_axis_tdata[127:96] != mult_out_q_data2) begin
        $display("ERROR: mult output sample %d",i);
        $display("Mult out Q1: %d", $signed(DUT.design_1_i.complex_mult_0.m_axis_tdata[127:96]));
        $display("Expected: %d", $signed(mult_out_q_data2));
      end
      if (DUT.design_1_i.complex_mult_0.m_axis_tdata[159:128] != mult_out_i_data3) begin
        $display("ERROR: mult output sample %d",i);
        $display("Mult out I2: %d", $signed(DUT.design_1_i.complex_mult_0.m_axis_tdata[159:128]));
        $display("Expected: %d", $signed(mult_out_i_data3));
      end
      if (DUT.design_1_i.complex_mult_0.m_axis_tdata[191:160] != mult_out_q_data3) begin
        $display("ERROR: mult output sample %d",i);
        $display("Mult out Q2: %d", $signed(DUT.design_1_i.complex_mult_0.m_axis_tdata[191:160]));
        $display("Expected: %d", $signed(mult_out_q_data3));
      end
      if (DUT.design_1_i.complex_mult_0.m_axis_tdata[223:192] != mult_out_i_data4) begin
        $display("ERROR: mult output sample %d",i);
        $display("Mult out I3: %d", $signed(DUT.design_1_i.complex_mult_0.m_axis_tdata[223:192]));
        $display("Expected: %d", $signed(mult_out_i_data3));
      end
      if (DUT.design_1_i.complex_mult_0.m_axis_tdata[255:224] != mult_out_q_data4) begin
        $display("ERROR: mult output sample %d",i);
        $display("Mult out Q3: %d", $signed(DUT.design_1_i.complex_mult_0.m_axis_tdata[255:224]));
        $display("Expected: %d", $signed(mult_out_q_data4));
      end
      #CLOCK_PERIOD;
    end

    $fclose(fd_mult_out);
    $fclose(fd_mult_out_verif);
    
  end

//---------------------------------------------------------------
// Scoreboard summation output
//---------------------------------------------------------------
  initial begin
    fd_sum = $fopen("../../../../../modules/sim/sum_samples.txt","r");
    if (fd_sum) $display("File was opened successfully: %0d ",fd_sum);
    else begin
      $display("File was NOT opened successfully: %0d",fd_sum);
      $stop;
    end

    #(CLOCK_PERIOD*339);

    $fscanf(fd_sum,"%d, %d\n",sum_i,sum_q);

    if (DUT.design_1_i.sum_0.m_axis_tdata[39:0] != sum_i) begin
      $display("ERROR: summation real expected: %d",$signed(sum_i));
      $display("Actual: %d",$signed(DUT.design_1_i.sum_0.m_axis_tdata[39:0]));
    end
    if (DUT.design_1_i.sum_0.m_axis_tdata[79:40] != sum_q) begin
      $display("ERROR: summation imaginary expected: %d",$signed(sum_q));
      $display("Actual: %d",$signed(DUT.design_1_i.sum_0.m_axis_tdata[79:40]));
    end

    $fclose(fd_sum);

  end
//---------------------------------------------------------------
// Scoreboard cordic output
//---------------------------------------------------------------
  initial begin
    fd_angle = $fopen("../../../../../modules/sim/angle_samples.txt","r");
    if (fd_angle) $display("File was opened successfully: %0d ",fd_angle);
    else begin
      $display("File was NOT opened successfully: %0d",fd_angle);
      $stop;
    end

    #(CLOCK_PERIOD*(c_PRECISION+344));

    $fscanf(fd_angle,"%d\n",angle);
    $display("Expected angle value: %f",angle);

    $display("Actual angle value: %d",$signed(DUT.design_1_i.angle_0.m_axis_tdata[c_PRECISION-1:0]));
    cordic_out_print = read_cordic_out($signed(DUT.design_1_i.angle_0.m_axis_tdata[c_PRECISION-1:0]));
    $display("Fix cordic conversion: %f",cordic_out_print);

    $fclose(fd_angle);

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
        $display("%D + i%D",$signed(i_data1),$signed(q_data1));
        $display("%D + i%D",$signed(i_data2),$signed(q_data2));
        $display("%D + i%D",$signed(i_data3),$signed(q_data3));
        $display("%D + i%D",$signed(i_data4),$signed(q_data4));
      end
      in_axis_tdata                 = {q_data4,i_data4,q_data3,i_data3,
                                       q_data2,i_data2,q_data1,i_data1};
      if (i == 319)
        in_axis_tlast               = 1'b1;
      #CLOCK_PERIOD;
    end
    
    in_axis_tlast                   = 1'b0;
    $fclose(fd);
    #250 $stop;
  end

endmodule
