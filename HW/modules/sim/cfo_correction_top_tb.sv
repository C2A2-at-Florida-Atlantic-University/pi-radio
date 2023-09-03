//---------------------------------------------------------------
// Jared Hermans
//---------------------------------------------------------------
`timescale 1 ns / 1 ps

module cfo_correction_top_tb();

  localparam                        CLOCK_PERIOD      = 4;
  localparam                        CLOCK_CYCLE       = CLOCK_PERIOD/2;
  localparam                        c_PRECISION       = 16;

  int                               fd;
  int                               fd_info;
  int                               fd_mult_out_verif;
  int                               fd_dds_out;
  int                               fd_mixer_out;
  int                               fd_mixer_in_out;

  int                               ofdm_symbols;

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

  logic [31:0]                      mult_out_i_print1,mult_out_q_print1;
  logic [31:0]                      mult_out_i_print2,mult_out_q_print2;
  logic [31:0]                      mult_out_i_print3,mult_out_q_print3;
  logic [31:0]                      mult_out_i_print4,mult_out_q_print4;

  logic [15:0]                      dds_actual_i_1,dds_actual_q_1;
  logic [15:0]                      dds_actual_i_2,dds_actual_q_2;
  logic [15:0]                      dds_actual_i_3,dds_actual_q_3;
  logic [15:0]                      dds_actual_i_4,dds_actual_q_4;

  logic [15:0]                      mix_in_i_1,mix_in_q_1;
  logic [15:0]                      mix_in_i_2,mix_in_q_2;
  logic [15:0]                      mix_in_i_3,mix_in_q_3;
  logic [15:0]                      mix_in_i_4,mix_in_q_4;
  
  logic [15:0]                      mixer_actual_i_1,mixer_actual_q_1;
  logic [15:0]                      mixer_actual_i_2,mixer_actual_q_2;
  logic [15:0]                      mixer_actual_i_3,mixer_actual_q_3;
  logic [15:0]                      mixer_actual_i_4,mixer_actual_q_4;

//---------------------------------------------------------------
// DUT
//---------------------------------------------------------------
//  design_1_wrapper DUT (
  cfo_correction_wrapper DUT (
    .axis_aclk                      (r_clk),
    .axis_aresetn                   (r_nRst),
    
    .bypass                         (1'b0),

    .m_axis_tdata                   (),
    .m_axis_tlast                   (),
    .m_axis_tvalid                  (),
    .m_axis_tstrb                   (),
    .m_axis_tready                  (1'b1),

    .s_axis_tdata                   (in_axis_tdata),
    .s_axis_tid                     (in_axis_tid),
    .s_axis_tlast                   (in_axis_tlast),
    .s_axis_tuser                   (in_axis_tuser),
    .s_axis_tvalid                  (in_axis_tvalid)
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
/*
  function real read_cordic_out;
    input logic [c_PRECISION:0] cordic_out;
    real cordic_print = 0;
    bit negative = 0;
    if (cordic_out[c_PRECISION-1]) begin
      negative                      <= 1;
      cordic_out                    <= ~cordic_out + 1;
    end

    for (int i = 0; i < c_PRECISION-2; i++) begin
      if (cordic_out[i])
        cordic_print                <= cordic_print + $pow(2,-c_PRECISION+3+i);
    end
    
    if (negative)
      read_cordic_out               <= -1*cordic_print;
    else
      read_cordic_out               <= cordic_print;
  endfunction
*/
//---------------------------------------------------------------
// Scoreboard multiplier output
//---------------------------------------------------------------
  initial begin
    //fd_mult_out_verif = $fopen("../../../../../../modules/sim/mult_verif_samples.txt","w");
    fd_mult_out_verif = $fopen("c:/Projects/pi-radio/HW/modules/sim/mult_verif_samples.txt","w");
    if (fd_mult_out_verif) $display("File was opened successfully: %0d ",fd_mult_out_verif);
    else begin
      $display("File was NOT opened successfully: %0d", fd_mult_out_verif);
      $stop;
    end

    #(273*CLOCK_PERIOD);
    for (int i = 0; i < (ofdm_symbols*64); i++) begin

      if (!(i%64)&&(i!=0))
        #(CLOCK_PERIOD*257);
      else
        #CLOCK_PERIOD;

      mult_out_i_print1 = DUT.cfo_correction_i.complex_mult_0.m_axis_tdata[31:0];
      mult_out_q_print1 = DUT.cfo_correction_i.complex_mult_0.m_axis_tdata[63:32];
      mult_out_i_print2 = DUT.cfo_correction_i.complex_mult_0.m_axis_tdata[95:64];
      mult_out_q_print2 = DUT.cfo_correction_i.complex_mult_0.m_axis_tdata[127:96];
      mult_out_i_print3 = DUT.cfo_correction_i.complex_mult_0.m_axis_tdata[159:128];
      mult_out_q_print3 = DUT.cfo_correction_i.complex_mult_0.m_axis_tdata[191:160];
      mult_out_i_print4 = DUT.cfo_correction_i.complex_mult_0.m_axis_tdata[223:192];
      mult_out_q_print4 = DUT.cfo_correction_i.complex_mult_0.m_axis_tdata[255:224];

      $fdisplay(fd_mult_out_verif,"%d, %d\n%d, %d\n%d, %d\n%d, %d",
        $signed(mult_out_i_print1),
        $signed(mult_out_q_print1),
        $signed(mult_out_i_print2),
        $signed(mult_out_q_print2),
        $signed(mult_out_i_print3),
        $signed(mult_out_q_print3),
        $signed(mult_out_i_print4),
        $signed(mult_out_q_print4));

    end

    $fclose(fd_mult_out_verif);
    
  end

//---------------------------------------------------------------
// Scoreboard dds
//---------------------------------------------------------------
  initial begin
    //fd_dds_out = $fopen("../../../../../../modules/sim/dds_vivado_samples.txt","w");
    fd_dds_out = $fopen("c:/Projects/pi-radio/HW/modules/sim/dds_vivado_samples.txt","w");
    if (fd_dds_out) $display("File was opened successfully: %0d ",fd_dds_out);
    else begin
      $display("File was NOT opened successfully: %0d",fd_dds_out);
      $stop;
    end

    #(CLOCK_PERIOD*(c_PRECISION+361)); //351

    for (int i = 0; i < (ofdm_symbols*256); i++) begin
      
      if (!(i%256)&&(i!=0))
        #(CLOCK_PERIOD*65);
      else
        #CLOCK_PERIOD;

//      dds_actual_i_1 = DUT.cfo_correction_i.Mixer.dds_top_0.m_axis_tdata[15:0];
//      dds_actual_q_1 = DUT.cfo_correction_i.Mixer.dds_top_0.m_axis_tdata[31:16];
//      dds_actual_i_2 = DUT.cfo_correction_i.Mixer.dds_top_0.m_axis_tdata[47:32];
//      dds_actual_q_2 = DUT.cfo_correction_i.Mixer.dds_top_0.m_axis_tdata[63:48];
//      dds_actual_i_3 = DUT.cfo_correction_i.Mixer.dds_top_0.m_axis_tdata[79:64];
//      dds_actual_q_3 = DUT.cfo_correction_i.Mixer.dds_top_0.m_axis_tdata[95:80];
//      dds_actual_i_4 = DUT.cfo_correction_i.Mixer.dds_top_0.m_axis_tdata[111:96];
//      dds_actual_q_4 = DUT.cfo_correction_i.Mixer.dds_top_0.m_axis_tdata[127:112];

      dds_actual_i_1 = DUT.cfo_correction_i.Mixer.conj_0.m_axis_tdata[15:0];
      dds_actual_q_1 = DUT.cfo_correction_i.Mixer.conj_0.m_axis_tdata[31:16];
      dds_actual_i_2 = DUT.cfo_correction_i.Mixer.conj_0.m_axis_tdata[47:32];
      dds_actual_q_2 = DUT.cfo_correction_i.Mixer.conj_0.m_axis_tdata[63:48];
      dds_actual_i_3 = DUT.cfo_correction_i.Mixer.conj_0.m_axis_tdata[79:64];
      dds_actual_q_3 = DUT.cfo_correction_i.Mixer.conj_0.m_axis_tdata[95:80];
      dds_actual_i_4 = DUT.cfo_correction_i.Mixer.conj_0.m_axis_tdata[111:96];
      dds_actual_q_4 = DUT.cfo_correction_i.Mixer.conj_0.m_axis_tdata[127:112];

      $fdisplay(fd_dds_out,"%d, %d\n%d, %d\n%d, %d\n%d, %d",$signed(dds_actual_i_1),
        $signed(dds_actual_q_1),$signed(dds_actual_i_2),$signed(dds_actual_q_2),
        $signed(dds_actual_i_3),$signed(dds_actual_q_3),$signed(dds_actual_i_4),
        $signed(dds_actual_q_4));

    end

    $fclose(fd_dds_out);

  end

//---------------------------------------------------------------
// Scoreboard mixer input
//---------------------------------------------------------------
  initial begin
    //fd_mixer_in_out = $fopen("../../../../../../modules/sim/mixer_out_samples.txt","w");
    fd_mixer_in_out = $fopen("c:/Projects/pi-radio/HW/modules/sim/mixer_out_samples.txt","w");
    if (fd_mixer_in_out) $display("File was opened successfully: %0d ",fd_mixer_in_out);
    else begin
      $display("File was NOT opened successfully: %0d",fd_mixer_in_out);
      $stop;
    end

    #(CLOCK_PERIOD*(c_PRECISION+361));

    for (int i = 0; i < (ofdm_symbols*256); i++) begin

      if (!(i%256)&&(i!=0))
        #(CLOCK_PERIOD*64);

      #CLOCK_PERIOD;

      mix_in_i_1 = DUT.cfo_correction_i.Mixer.mixer_0.s_axis0_tdata[15:0];
      mix_in_q_1 = DUT.cfo_correction_i.Mixer.mixer_0.s_axis0_tdata[31:16];
      mix_in_i_2 = DUT.cfo_correction_i.Mixer.mixer_0.s_axis0_tdata[47:32];
      mix_in_q_2 = DUT.cfo_correction_i.Mixer.mixer_0.s_axis0_tdata[63:48];
      mix_in_i_3 = DUT.cfo_correction_i.Mixer.mixer_0.s_axis0_tdata[79:64];
      mix_in_q_3 = DUT.cfo_correction_i.Mixer.mixer_0.s_axis0_tdata[95:80];
      mix_in_i_4 = DUT.cfo_correction_i.Mixer.mixer_0.s_axis0_tdata[111:96];
      mix_in_q_4 = DUT.cfo_correction_i.Mixer.mixer_0.s_axis0_tdata[127:112];

      $fdisplay(fd_mixer_in_out,"%d, %d\n%d, %d\n%d, %d\n%d, %d",$signed(mix_in_i_1),
        $signed(mix_in_q_1),$signed(mix_in_i_2),$signed(mix_in_q_2),$signed(mix_in_i_3),
        $signed(mix_in_q_3),$signed(mix_in_i_4),$signed(mix_in_q_4));

    end

    $fclose(fd_mixer_in_out);

  end

//---------------------------------------------------------------
// Scoreboard mixer output
//---------------------------------------------------------------
  initial begin
    fd_mixer_out = $fopen("c:/Projects/pi-radio/HW/modules/sim/mixer_vivado_samples.txt","w");
    //fd_mixer_out = $fopen("../../../../../../modules/sim/mixer_vivado_samples.txt","w");
    if (fd_mixer_out) $display("File was opened successfully: %0d ",fd_mixer_out);
    else begin
      $display("File was NOT opened successfully: %0d",fd_mixer_out);
      $stop;
    end
    
    #(CLOCK_PERIOD*(c_PRECISION+369));
    
    for (int i = 0; i < (ofdm_symbols*256); i++) begin

      if (!(i%256)&&(i!=0))
        #(CLOCK_PERIOD*64);

      #CLOCK_PERIOD;

      mixer_actual_i_1 = DUT.cfo_correction_i.mux_0.m_axis_tdata[15:0];
      mixer_actual_q_1 = DUT.cfo_correction_i.mux_0.m_axis_tdata[31:16];
      mixer_actual_i_2 = DUT.cfo_correction_i.mux_0.m_axis_tdata[47:32];
      mixer_actual_q_2 = DUT.cfo_correction_i.mux_0.m_axis_tdata[63:48];
      mixer_actual_i_3 = DUT.cfo_correction_i.mux_0.m_axis_tdata[79:64];
      mixer_actual_q_3 = DUT.cfo_correction_i.mux_0.m_axis_tdata[95:80];
      mixer_actual_i_4 = DUT.cfo_correction_i.mux_0.m_axis_tdata[111:96];
      mixer_actual_q_4 = DUT.cfo_correction_i.mux_0.m_axis_tdata[127:112];

      $fdisplay(fd_mixer_out,"%d, %d\n%d, %d\n%d, %d\n%d, %d",$signed(mixer_actual_i_1),
        $signed(mixer_actual_q_1),$signed(mixer_actual_i_2),$signed(mixer_actual_q_2),
        $signed(mixer_actual_i_3),$signed(mixer_actual_q_3),$signed(mixer_actual_i_4),
        $signed(mixer_actual_q_4));

    end
    
    #(579*CLOCK_PERIOD);

    for (int i = 0; i < (ofdm_symbols*256); i++) begin

      if (!(i%256)&&(i!=0))
        #(CLOCK_PERIOD*64);

      #CLOCK_PERIOD;

      mixer_actual_i_1 = DUT.cfo_correction_i.mux_0.m_axis_tdata[15:0];
      mixer_actual_q_1 = DUT.cfo_correction_i.mux_0.m_axis_tdata[31:16];
      mixer_actual_i_2 = DUT.cfo_correction_i.mux_0.m_axis_tdata[47:32];
      mixer_actual_q_2 = DUT.cfo_correction_i.mux_0.m_axis_tdata[63:48];
      mixer_actual_i_3 = DUT.cfo_correction_i.mux_0.m_axis_tdata[79:64];
      mixer_actual_q_3 = DUT.cfo_correction_i.mux_0.m_axis_tdata[95:80];
      mixer_actual_i_4 = DUT.cfo_correction_i.mux_0.m_axis_tdata[111:96];
      mixer_actual_q_4 = DUT.cfo_correction_i.mux_0.m_axis_tdata[127:112];

      $fdisplay(fd_mixer_out,"%d, %d\n%d, %d\n%d, %d\n%d, %d",$signed(mixer_actual_i_1),
        $signed(mixer_actual_q_1),$signed(mixer_actual_i_2),$signed(mixer_actual_q_2),
        $signed(mixer_actual_i_3),$signed(mixer_actual_q_3),$signed(mixer_actual_i_4),
        $signed(mixer_actual_q_4));

    end
    $fclose(fd_mixer_out);
  end

//---------------------------------------------------------------
// Control tlast/tvalid
//---------------------------------------------------------------
  initial begin
    r_nRst                          <= 1'b0;
    #CLOCK_PERIOD;
    r_nRst                          <= 1'b1;
    #(4*CLOCK_PERIOD);
    #CLOCK_PERIOD;
    in_axis_tvalid                  <= 1'b1;
    in_axis_tuser                   <= '0;
    in_axis_tid                     <= '0;
    for (int i = 0; i < (ofdm_symbols*320); i++) begin
      if (!((i+1)%320)&&(i!=0))
        in_axis_tlast               <= 1'b1;
      if (!(i%320)&&(i!=0))
        in_axis_tlast               <= 1'b0;
      #CLOCK_PERIOD;
    end
    in_axis_tlast                   <= 1'b0;
    in_axis_tvalid                  <= 1'b0;

    #(2000+((ofdm_symbols-1)*CLOCK_PERIOD));

    #CLOCK_PERIOD;
    r_nRst                          <= 1'b1;
    #(4*CLOCK_PERIOD);
    #CLOCK_PERIOD;
    in_axis_tvalid                  <= 1'b1;
    in_axis_tuser                   <= '0;
    in_axis_tid                     <= '0;
    for (int i = 0; i < (ofdm_symbols*320); i++) begin
      if (!((i+1)%320)&&(i!=0))
        in_axis_tlast               <= 1'b1;
      if (!(i%320)&&(i!=0))
        in_axis_tlast               <= 1'b0;
      #CLOCK_PERIOD;
    end
    in_axis_tlast                   <= 1'b0;
    in_axis_tvalid                  <= 1'b0;
  end
//---------------------------------------------------------------
// Stimulate design
//---------------------------------------------------------------
  initial begin
    //fd = $fopen("../../../../../../modules/sim/cw_input_samples.txt","r");
    fd = $fopen("../../../../../../modules/sim/equalizer_input_samples.txt","r");
    //fd = $fopen("c:/Projects/pi-radio/HW/modules/sim/equalizer_input_samples.txt","r");
    if (fd) $display("File was opened successfully: %0d ",fd);
    else begin   
      $display("File was NOT opened successfully: %0d",fd);
      $stop;
    end
    //fd_info = $fopen("../../../../../../modules/sim/info.txt","r");
    fd_info = $fopen("c:/Projects/pi-radio/HW/modules/sim/info.txt","r");
    if (fd_info) $display("File was opened successfully: %0d ",fd_info);
    else begin
      $display("File was NOT opened successfully: %0d",fd_info);
      $stop;
    end

    $fscanf(fd_info,"%d",ofdm_symbols);
    $display("Number of OFDM symbols: %d",ofdm_symbols);
    
    #(CLOCK_PERIOD*6);

    for (int i = 0; i < (ofdm_symbols*320); i++) begin
      $fscanf(fd,"%d, %d",i_data1,q_data1);
      $fscanf(fd,"%d, %d",i_data2,q_data2);
      $fscanf(fd,"%d, %d",i_data3,q_data3);
      $fscanf(fd,"%d, %d",i_data4,q_data4);
      in_axis_tdata                 <= {q_data4,i_data4,q_data3,i_data3,
                                       q_data2,i_data2,q_data1,i_data1};
      #CLOCK_PERIOD;
    end
    $fclose(fd);
    #(2000+((ofdm_symbols-1)*CLOCK_PERIOD));
    fd = $fopen("c:/Projects/pi-radio/HW/modules/sim/equalizer_input_samples.txt","r");
    //fd = $fopen("../../../../../../modules/sim/equalizer_input_samples.txt","r");
    if (fd) $display("File was opened successfully: %0d ",fd);
    else begin   
      $display("File was NOT opened successfully: %0d",fd);
      $stop;
    end

    #(CLOCK_PERIOD*6);

    for (int i = 0; i < (ofdm_symbols*320); i++) begin
      $fscanf(fd,"%d, %d",i_data1,q_data1);
      $fscanf(fd,"%d, %d",i_data2,q_data2);
      $fscanf(fd,"%d, %d",i_data3,q_data3);
      $fscanf(fd,"%d, %d",i_data4,q_data4);
      in_axis_tdata                 <= {q_data4,i_data4,q_data3,i_data3,
                                       q_data2,i_data2,q_data1,i_data1};
      #CLOCK_PERIOD;
    end
    $fclose(fd);
    $fclose(fd_info);
    #(2000+((ofdm_symbols-1)*CLOCK_PERIOD)); $stop;

  end

endmodule
