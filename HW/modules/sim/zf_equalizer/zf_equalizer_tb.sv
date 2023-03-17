//---------------------------------------------------------------
// Jared Hermans
//
// IMPORTANT: change directories to vivado project root for 
//  relative paths to work
//---------------------------------------------------------------
`timescale 1 ns / 1 ps

module zf_equalizer_tb();

  localparam                        CLOCK_PERIOD      = 4;
  localparam                        CLOCK_CYCLE       = CLOCK_PERIOD/2;

  int fd;
  int fd_info;
  int fd_tx_pilot;
  int fd_coe_file;
  int fd_pilot_file;
  int fd_cordic_tx_in_file;
  int fd_cordic_rx_in_file;
  int fd_cordic_tx_out_file;
  int fd_cordic_rx_out_file;
  int fd_div_abs_in_1_file;
  int fd_div_ang_in_1_file;
  int fd_div_1_full_file;
  int fd_eq_est_1_file;
  int fd_eq_din_1_file;
  int fd_eq_1_file;
  int fd_data_polar;
  int fd_out_file;
  int fd_dds_file;
  int fd_polar_to_cart_file;

  int ofdm_symbols;

  logic [15:0]                      i_data1,q_data1;
  logic [15:0]                      i_data2,q_data2;
  logic [15:0]                      i_data3,q_data3;
  logic [15:0]                      i_data4,q_data4;

  logic [15:0]                      i_tx_pilot,q_tx_pilot;
  logic [15:0]                      i_rx_pilot,q_rx_pilot;
  logic [31:0]                      pilot_tx_tdata,pilot_rx_tdata;

  logic [15:0]                      div1_abs_denom;
  logic [15:0]                      div1_abs_num;
  logic [15:0]                      div1_ang_denom;
  logic [15:0]                      div1_ang_num;

  logic [15:0]                      div1_full;
  logic [15:0]                      div1_full_ang;
  logic [15:0]                      div1_amp;
  logic [15:0]                      div1_phase;

  logic [15:0]                      i_tx_in_cordic,q_tx_in_cordic;
  logic [15:0]                      i_rx_in_cordic,q_rx_in_cordic;
  logic [15:0]                      i_tx_out_cordic,q_tx_out_cordic;
  logic [15:0]                      i_rx_out_cordic,q_rx_out_cordic;

  logic [15:0]                      data_ang0,data_abs0;
  logic [15:0]                      data_ang1,data_abs1;
  logic [15:0]                      data_ang2,data_abs2;
  logic [15:0]                      data_ang3,data_abs3;

  logic [15:0]                      din_ang ,din_amp ;
  logic [15:0]                      din_ang0,din_amp0;
  logic [15:0]                      din_ang1,din_amp1;
  logic [15:0]                      din_ang2,din_amp2;
  logic [15:0]                      din_ang3,din_amp3;

  logic [15:0]                      eq1_0_abs,eq1_1_abs,eq1_2_abs,eq1_3_abs;
  logic [15:0]                      eq1_0_ang,eq1_1_ang,eq1_2_ang,eq1_3_ang;

  logic [15:0]                      eq_0_i,eq_1_i,eq_2_i;
  logic [15:0]                      eq_0_q,eq_1_q,eq_2_q;
  
  logic [15:0]                      pre_eq_0_i,pre_eq_1_i,pre_eq_2_i,pre_eq_3_i;
  logic [15:0]                      pre_eq_0_q,pre_eq_1_q,pre_eq_2_q,pre_eq_3_q;

  logic                             r_clk;
  logic                             r_nRst;

  logic [127:0]                     in_axis_tdata     = '0;
  logic                             in_axis_tlast     = 1'b0;
  logic                             in_axis_tvalid    = 1'b0;

//---------------------------------------------------------------
// DUT
//---------------------------------------------------------------
  zf_equalizer_wrapper DUT (
    .aclk                           (r_clk),
    .aresetn                        (r_nRst),

    .bypass                         (1'b0),

    .m_axis_tdata                   (),
    .m_axis_tlast                   (),
    .m_axis_tvalid                  (),
    .m_axis_tready                  (1'b1),

    .s_axis_tdata                   (in_axis_tdata),
    .s_axis_tlast                   (in_axis_tlast),
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
// Scoreboard cordic in rx
//---------------------------------------------------------------
  initial begin
    //fd_cordic_rx_in_file = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/cordic_rx_in.txt","w");
    fd_cordic_rx_in_file = $fopen("../../../../../../modules/sim/zf_equalizer/cordic_rx_in.txt","w");
    if (fd_cordic_rx_in_file) $display("File was opened successfully: %0d ",fd_cordic_rx_in_file);
    else begin
      $display("File was NOT opened successfully: %0d",fd_cordic_rx_in_file);
      $stop;
    end

    #(CLOCK_PERIOD*38);
    
    for (int k = 0; k < ofdm_symbols; k++) begin
      for (int i = 0; i < 256; i++) begin
        if (DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.s_pilot_rx_axis_tvalid == 1) begin
          i_rx_in_cordic = 
            DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.s_pilot_rx_axis_tdata[15:0];
          q_rx_in_cordic = 
            DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.s_pilot_rx_axis_tdata[31:16];
          $fdisplay(fd_cordic_rx_in_file,"%d, %d",$signed(i_rx_in_cordic),$signed(q_rx_in_cordic));
        end
        #CLOCK_PERIOD;
      end
      #(CLOCK_PERIOD*64);
    end

    $fclose(fd_cordic_rx_in_file);

  end

//---------------------------------------------------------------
// Scoreboard cordic in tx
//---------------------------------------------------------------
  initial begin
    //fd_cordic_tx_in_file = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/cordic_tx_in.txt","w");
    fd_cordic_tx_in_file = $fopen("../../../../../../modules/sim/zf_equalizer/cordic_tx_in.txt","w");
    if (fd_cordic_tx_in_file) $display("File was opened successfully: %0d ",fd_cordic_tx_in_file);
    else begin
      $display("File was NOT opened successfully: %0d",fd_cordic_tx_in_file);
      $stop;
    end

    #(CLOCK_PERIOD*41);

    for (int k = 0; k < ofdm_symbols; k++) begin
      for (int i = 0; i < 256; i++) begin
        if (DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.s_pilot_tx_axis_tvalid == 1) begin
          i_tx_in_cordic = 
            DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.s_pilot_tx_axis_tdata[15:0];
          q_tx_in_cordic = 
            DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.s_pilot_tx_axis_tdata[31:16];
          $fdisplay(fd_cordic_tx_in_file,"%d, %d",$signed(i_tx_in_cordic),$signed(q_tx_in_cordic));
        end
        #CLOCK_PERIOD;
      end
      #(CLOCK_PERIOD*64);
    end

    $fclose(fd_cordic_tx_in_file);

  end

//---------------------------------------------------------------
// Scoreboard cordic out rx
//---------------------------------------------------------------
  initial begin
    //fd_cordic_rx_out_file = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/cordic_rx_out.txt","w");
    fd_cordic_rx_out_file = $fopen("../../../../../../modules/sim/zf_equalizer/cordic_rx_out.txt","w");
    if (fd_cordic_rx_out_file) $display("File was opened successfully: %0d ",fd_cordic_rx_out_file);
    else begin
      $display("File was NOT opened successfully: %0d",fd_cordic_rx_out_file);
      $stop;
    end

    #(CLOCK_PERIOD*61);

    for (int k = 0; k < ofdm_symbols; k++) begin
      for (int i = 0; i < 256; i++) begin
        if (DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.m_rx_cordic_out_axis_tvalid == 1) begin
          i_rx_out_cordic = 
            DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.m_rx_cordic_out_axis_tdata[15:0];
          q_rx_out_cordic = 
            DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.m_rx_cordic_out_axis_tdata[31:16];
          $fdisplay(fd_cordic_rx_out_file,"%d, %d",$signed(i_rx_out_cordic),$signed(q_rx_out_cordic));
        end
        #CLOCK_PERIOD;
      end
      #(CLOCK_PERIOD*64);
    end

    $fclose(fd_cordic_rx_out_file);

  end

//---------------------------------------------------------------
// Scoreboard cordic out tx
//---------------------------------------------------------------
  initial begin
    //fd_cordic_tx_out_file = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/cordic_tx_out.txt","w");
    fd_cordic_tx_out_file = $fopen("../../../../../../modules/sim/zf_equalizer/cordic_tx_out.txt","w");
    if (fd_cordic_tx_out_file) $display("File was opened successfully: %0d ",fd_cordic_tx_out_file);
    else begin
      $display("File was NOT opened successfully: %0d",fd_cordic_tx_out_file);
      $stop;
    end

    #(CLOCK_PERIOD*61);

    for (int k = 0; k < ofdm_symbols; k++) begin
      for (int i = 0; i < 256; i++) begin
        if (DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.m_tx_cordic_out_axis_tvalid == 1) begin
          i_tx_out_cordic = 
            DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.m_tx_cordic_out_axis_tdata[15:0];
          q_tx_out_cordic = 
            DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.m_tx_cordic_out_axis_tdata[31:16];
          $fdisplay(fd_cordic_tx_out_file,"%d, %d",$signed(i_tx_out_cordic),$signed(q_tx_out_cordic));
        end
        #CLOCK_PERIOD;
      end
      #(CLOCK_PERIOD*64);
    end

    $fclose(fd_cordic_tx_out_file);

  end

//---------------------------------------------------------------
// Scoreboard divide input of stage 1
//---------------------------------------------------------------
  initial begin
    //fd_div_abs_in_1_file = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/div_abs_in.txt","w");
    fd_div_abs_in_1_file = $fopen("../../../../../../modules/sim/zf_equalizer/div_abs_in.txt","w");
    if (fd_div_abs_in_1_file) $display("File was opened successfully: %0d ",fd_div_abs_in_1_file);
    else begin
      $display("File was NOT opened successfully: %0d",fd_div_abs_in_1_file);
      $stop;
    end

    //fd_div_ang_in_1_file = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/div_ang_in.txt","w");
    fd_div_ang_in_1_file = $fopen("../../../../../../modules/sim/zf_equalizer/div_ang_in.txt","w");
    if (fd_div_ang_in_1_file) $display("File was opened successfully: %0d ",fd_div_ang_in_1_file);
    else begin
      $display("File was NOT opened successfully: %0d",fd_div_ang_in_1_file);
      $stop;
    end

    #(CLOCK_PERIOD*62);

    for (int k = 0; k < ofdm_symbols; k++) begin
      for (int i = 0; i < 256; i++) begin
        if (DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.m_ang_num_in_axis_tvalid == 1) begin
          div1_abs_denom = DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.m_abs_denom_in_axis_tdata;
          div1_abs_num = DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.m_abs_num_in_axis_tdata;
          div1_ang_denom = DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.m_ang_denom_in_axis_tdata;
          div1_ang_num = DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.m_ang_num_in_axis_tdata;
          $fdisplay(fd_div_abs_in_1_file,"%d, %d",$signed(div1_abs_denom),$signed(div1_abs_num));
          $fdisplay(fd_div_ang_in_1_file,"%d, %d",$signed(div1_ang_denom),$signed(div1_ang_num));
        end
        #CLOCK_PERIOD;
      end
      #(CLOCK_PERIOD*64);
    end

    $fclose(fd_div_abs_in_1_file);
    $fclose(fd_div_ang_in_1_file);

  end

//---------------------------------------------------------------
// Scoreboard divide output of stage 1
//---------------------------------------------------------------
  initial begin
    //fd_div_1_full_file = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/div_1_full.txt","w");
    fd_div_1_full_file = $fopen("../../../../../../modules/sim/zf_equalizer/div_1_full.txt","w");
    if (fd_div_1_full_file) $display("File was opened successfully: %0d ",fd_div_1_full_file);
    else begin
      $display("File was NOT opened successfully: %0d",fd_div_1_full_file);
      $stop;
    end

    #(CLOCK_PERIOD*84);

    for (int k = 0; k < ofdm_symbols; k++) begin
      for (int i = 0; i < 256; i++) begin
        if (DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.m_ch_est_axis_tvalid == 1) begin
          div1_full = DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.m_ch_est_axis_tdata[15:0];
          div1_full_ang = DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.m_ch_est_axis_tdata[31:16];
          $fdisplay(fd_div_1_full_file,"%d, %d",div1_full,$signed(div1_full_ang));
        end
        #CLOCK_PERIOD;
      end
      #(CLOCK_PERIOD*64);
    end

    $fclose(fd_div_1_full_file);

  end


//---------------------------------------------------------------
// Scoreboard divide output of stage 1
//---------------------------------------------------------------
  initial begin
    //fd_data_polar = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/polar_data.txt","w");
    fd_data_polar = $fopen("../../../../../../modules/sim/zf_equalizer/polar_data.txt","w");
    if (fd_data_polar) $display("File was opened successfully: %0d ",fd_data_polar);
    else begin
      $display("File was NOT opened successfully: %0d",fd_data_polar);
      $stop;
    end

    #(CLOCK_PERIOD*86);

    for (int k = 0; k < ofdm_symbols; k++) begin
      for (int i = 0; i < 256; i++) begin
        if (DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.m_axis_tvalid == 1) begin
          if (i != 0) begin
            data_abs0 = DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.m_axis_tdata[15:0];
            data_ang0 = DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.m_axis_tdata[31:16];
            $fdisplay(fd_data_polar,"%d, %d",$signed(data_abs0),$signed(data_ang0));
            data_abs1 = DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.m_axis_tdata[47:32];
            data_ang1 = DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.m_axis_tdata[63:48];
            $fdisplay(fd_data_polar,"%d, %d",$signed(data_abs1),$signed(data_ang1));
            data_abs2 = DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.m_axis_tdata[79:64];
            data_ang2 = DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.m_axis_tdata[95:80];
            $fdisplay(fd_data_polar,"%d, %d",$signed(data_abs2),$signed(data_ang2));
          end
            data_abs3 = DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.m_axis_tdata[111:96];
            data_ang3 = DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.m_axis_tdata[127:112];
            $fdisplay(fd_data_polar,"%d, %d",$signed(data_abs3),$signed(data_ang3));
        end
        #CLOCK_PERIOD;
      end
      #(CLOCK_PERIOD*64);
    end

    $fclose(fd_data_polar);

  end

//---------------------------------------------------------------
// Scoreboard Equalizer stage 1 input
//---------------------------------------------------------------
  initial begin
    //fd_eq_din_1_file = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/eq_din_1.txt","w");
    fd_eq_din_1_file = $fopen("../../../../../../modules/sim/zf_equalizer/eq_din_1.txt","w");
    if (fd_eq_din_1_file) $display("File was opened successfully: %0d ",fd_eq_din_1_file);
    else begin
      $display("File was NOT opened successfully: %0d",fd_eq_din_1_file);
      $stop;
    end

    //fd_eq_est_1_file = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/eq_est_1.txt","w");
    fd_eq_est_1_file = $fopen("../../../../../../modules/sim/zf_equalizer/eq_est_1.txt","w");
    if (fd_eq_est_1_file) $display("File was opened successfully: %0d ",fd_eq_est_1_file);
    else begin
      $display("File was NOT opened successfully: %0d",fd_eq_est_1_file);
      $stop;
    end

    #(CLOCK_PERIOD*86);

    for (int k = 0; k < ofdm_symbols; k++) begin
      for (int i = 0; i < 256; i++) begin
        if (DUT.zf_equalizer_i.Normalized_ZF_stage_1.equalization_0.s_ch_est_axis_tvalid == 1) begin
          if (i != 0) begin 
            din_amp0 = 
              DUT.zf_equalizer_i.Normalized_ZF_stage_1.equalization_0.s_din_axis_tdata[15:0];
            din_ang0 = 
              DUT.zf_equalizer_i.Normalized_ZF_stage_1.equalization_0.s_din_axis_tdata[31:16];
            $fdisplay(fd_eq_din_1_file,"%d, %d",$signed(din_amp0),$signed(din_ang0));
            din_amp1 = 
              DUT.zf_equalizer_i.Normalized_ZF_stage_1.equalization_0.s_din_axis_tdata[47:32];
            din_ang1 = 
              DUT.zf_equalizer_i.Normalized_ZF_stage_1.equalization_0.s_din_axis_tdata[63:48];
            $fdisplay(fd_eq_din_1_file,"%d, %d",$signed(din_amp1),$signed(din_ang1));
            din_amp2 = 
              DUT.zf_equalizer_i.Normalized_ZF_stage_1.equalization_0.s_din_axis_tdata[79:64];
            din_ang2 = 
              DUT.zf_equalizer_i.Normalized_ZF_stage_1.equalization_0.s_din_axis_tdata[95:80];
            $fdisplay(fd_eq_din_1_file,"%d, %d",$signed(din_amp2),$signed(din_ang2));
          end
          din_amp3 = 
            DUT.zf_equalizer_i.Normalized_ZF_stage_1.equalization_0.s_din_axis_tdata[111:96];
          din_ang3 = 
            DUT.zf_equalizer_i.Normalized_ZF_stage_1.equalization_0.s_din_axis_tdata[127:112];
          $fdisplay(fd_eq_din_1_file,"%d, %d",$signed(din_amp3),$signed(din_ang3));
          din_amp = 
            DUT.zf_equalizer_i.Normalized_ZF_stage_1.equalization_0.s_ch_est_axis_tdata[15:0];
          din_ang = 
            DUT.zf_equalizer_i.Normalized_ZF_stage_1.equalization_0.s_ch_est_axis_tdata[31:16];
          $fdisplay(fd_eq_est_1_file,"%d, %d",$signed(din_amp),$signed(din_ang));
        end
        #CLOCK_PERIOD;
      end
      #(CLOCK_PERIOD*64);
    end

    $fclose(fd_eq_est_1_file);
    $fclose(fd_eq_din_1_file);

  end

//---------------------------------------------------------------
// Scoreboard Equalizer stage 1 output
//---------------------------------------------------------------
  initial begin
    //fd_eq_1_file = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/eq_1.txt","w");
    fd_eq_1_file = $fopen("../../../../../../modules/sim/zf_equalizer/eq_1.txt","w");
    if (fd_eq_1_file) $display("File was opened successfully: %0d ",fd_eq_1_file);
    else begin
      $display("File was NOT opened successfully: %0d",fd_eq_1_file);
      $stop;
    end

    #(CLOCK_PERIOD*107);

    for (int k = 0; k < ofdm_symbols; k++) begin
      for (int i = 0; i < 256; i++) begin
        if (DUT.zf_equalizer_i.Normalized_ZF_stage_1.equalization_0.m_axis_tvalid == 1) begin
          eq1_0_abs = DUT.zf_equalizer_i.Normalized_ZF_stage_1.equalization_0.m_axis_tdata[15:0];
          eq1_0_ang = DUT.zf_equalizer_i.Normalized_ZF_stage_1.equalization_0.m_axis_tdata[31:16];
          eq1_1_abs = DUT.zf_equalizer_i.Normalized_ZF_stage_1.equalization_0.m_axis_tdata[47:32];
          eq1_1_ang = DUT.zf_equalizer_i.Normalized_ZF_stage_1.equalization_0.m_axis_tdata[63:48];
          eq1_2_abs = DUT.zf_equalizer_i.Normalized_ZF_stage_1.equalization_0.m_axis_tdata[79:64];
          eq1_2_ang = DUT.zf_equalizer_i.Normalized_ZF_stage_1.equalization_0.m_axis_tdata[95:80];
          eq1_3_abs = DUT.zf_equalizer_i.Normalized_ZF_stage_1.equalization_0.m_axis_tdata[111:96];
          eq1_3_ang = DUT.zf_equalizer_i.Normalized_ZF_stage_1.equalization_0.m_axis_tdata[127:112];
          if (i != 0) begin
            $fdisplay(fd_eq_1_file,"%d, %d",$signed(eq1_0_abs),$signed(eq1_0_ang));
            $fdisplay(fd_eq_1_file,"%d, %d",$signed(eq1_1_abs),$signed(eq1_1_ang));
            $fdisplay(fd_eq_1_file,"%d, %d",$signed(eq1_2_abs),$signed(eq1_2_ang));
          end
          $fdisplay(fd_eq_1_file,"%d, %d",$signed(eq1_3_abs),$signed(eq1_3_ang));
        end
        #CLOCK_PERIOD;
      end
      #(CLOCK_PERIOD*64);
    end

    $fclose(fd_eq_1_file);

  end

//---------------------------------------------------------------
// Scoreboard polar to cartesian conversion Input
//---------------------------------------------------------------
  initial begin
    
    //fd_out_file = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/polar_to_cart.txt","w");
    fd_polar_to_cart_file = $fopen("../../../../../../modules/sim/zf_equalizer/polar_to_cart.txt","w");
    if (fd_polar_to_cart_file) $display("File was opened successfully: %0d ",fd_polar_to_cart_file);
    else begin
      $display("File was NOT opened successfully: %0d",fd_polar_to_cart_file);
      $stop;
    end

    #(CLOCK_PERIOD*107);

    for (int k = 0; k < ofdm_symbols; k++) begin
      for (int i = 0; i < 256; i++) begin
        if (DUT.zf_equalizer_i.polar_to_cartesian.s_axis_tvalid == 1) begin
          if (i != 0) begin
            pre_eq_0_i = DUT.zf_equalizer_i.polar_to_cartesian.s_axis_tdata[15:0];
            pre_eq_0_q = DUT.zf_equalizer_i.polar_to_cartesian.s_axis_tdata[31:16];
            pre_eq_1_i = DUT.zf_equalizer_i.polar_to_cartesian.s_axis_tdata[47:32];
            pre_eq_1_q = DUT.zf_equalizer_i.polar_to_cartesian.s_axis_tdata[63:48];
            pre_eq_2_i = DUT.zf_equalizer_i.polar_to_cartesian.s_axis_tdata[79:64];
            pre_eq_2_q = DUT.zf_equalizer_i.polar_to_cartesian.s_axis_tdata[95:80];
            pre_eq_3_i = DUT.zf_equalizer_i.polar_to_cartesian.s_axis_tdata[111:96];
            pre_eq_3_q = DUT.zf_equalizer_i.polar_to_cartesian.s_axis_tdata[127:112];
            $fdisplay(fd_polar_to_cart_file,"%d, %d",$signed(pre_eq_0_i),$signed(pre_eq_1_q));
            $fdisplay(fd_polar_to_cart_file,"%d, %d",$signed(pre_eq_1_i),$signed(pre_eq_2_q));
            $fdisplay(fd_polar_to_cart_file,"%d, %d",$signed(pre_eq_2_i),$signed(pre_eq_3_q));
          end
        end
        #CLOCK_PERIOD;
      end
      #(CLOCK_PERIOD*64);
    end

    $fclose(fd_polar_to_cart_file);

  end

//---------------------------------------------------------------
// Scoreboard polar to cartesian conversion Output
//---------------------------------------------------------------
  initial begin
    
    //fd_out_file = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/eq_out.txt","w");
    fd_out_file = $fopen("../../../../../../modules/sim/zf_equalizer/eq_out.txt","w");
    if (fd_out_file) $display("File was opened successfully: %0d ",fd_out_file);
    else begin
      $display("File was NOT opened successfully: %0d",fd_out_file);
      $stop;
    end

    #(CLOCK_PERIOD*128);

    for (int k = 0; k < ofdm_symbols; k++) begin
      for (int i = 0; i < 256; i++) begin
        if (DUT.zf_equalizer_i.polar_to_cartesian.m_axis_tvalid == 1) begin
          eq_0_i = DUT.zf_equalizer_i.polar_to_cartesian.m_axis_tdata[15:0];
          eq_0_q = DUT.zf_equalizer_i.polar_to_cartesian.m_axis_tdata[31:16];
          eq_1_i = DUT.zf_equalizer_i.polar_to_cartesian.m_axis_tdata[47:32];
          eq_1_q = DUT.zf_equalizer_i.polar_to_cartesian.m_axis_tdata[63:48];
          eq_2_i = DUT.zf_equalizer_i.polar_to_cartesian.m_axis_tdata[79:64];
          eq_2_q = DUT.zf_equalizer_i.polar_to_cartesian.m_axis_tdata[95:80];
          $fdisplay(fd_out_file,"%d, %d",$signed(eq_0_i),$signed(eq_0_q));
          $fdisplay(fd_out_file,"%d, %d",$signed(eq_1_i),$signed(eq_1_q));
          $fdisplay(fd_out_file,"%d, %d",$signed(eq_2_i),$signed(eq_2_q));
        end
        #CLOCK_PERIOD;
      end
      #(CLOCK_PERIOD*64);
    end

    $fclose(fd_out_file);

  end

//---------------------------------------------------------------
// Control tlast/tvalid
//---------------------------------------------------------------
  initial begin
    r_nRst                          <= 1'b0;
    #(3*CLOCK_PERIOD);
    r_nRst                          <= 1'b1;
    #(3*CLOCK_PERIOD);
    in_axis_tvalid                  <= 1'b1;

    for (int k = 0; k < ofdm_symbols; k++) begin
      for (int i = 0; i < 320; i++) begin
        if (!((i+1)%256)&&(i!=0))
          in_axis_tlast               <= 1'b1;
        else
          in_axis_tlast               <= 1'b0;
        if (i < 256)
          in_axis_tvalid              <= 1'b1;
        else
          in_axis_tvalid              <= 1'b0;
        #CLOCK_PERIOD;
      end
    end

    in_axis_tlast                   <= 1'b0;
    in_axis_tvalid                  <= 1'b0;

    #2000;
  end
      

//---------------------------------------------------------------
// Stimulate design
//---------------------------------------------------------------
  initial begin

    //fd = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/fft_out.txt","r");
    fd = $fopen("../../../../../../modules/sim/zf_equalizer/fft_out.txt","r");
    if (fd) $display("File was opened successfully: %0d ",fd);
    else begin   
      $display("File was NOT opened successfully: %0d",fd);
      $stop;
    end

    //fd_info = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/info.txt","r");
    fd_info = $fopen("../../../../../../modules/sim/zf_equalizer/info.txt","r");
    if (fd_info) $display("File was opened successfully: %0d ",fd_info);
    else begin
      $display("File was NOT opened successfully: %0d",fd_info);
      $stop;
    end

    //fd_coe_file = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/coe_signed_samples.txt","w");
    fd_coe_file = $fopen("../../../../../../modules/sim/zf_equalizer/coe_signed_samples.txt","w");
    if (fd_coe_file) $display("File was opened successfully: %0d ",fd_coe_file);
    else begin
      $display("File was NOT opened successfully: %0d",fd_coe_file);
        $stop;
    end

    //fd_pilot_file = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/pilot_data.txt","r");
    fd_pilot_file = $fopen("../../../../../../modules/sim/zf_equalizer/pilot_data.txt","r");
    if (fd_pilot_file) $display("File was opened successfully: %0d ",fd_pilot_file);
    else begin
      $display("File was NOT opened successfully: %0d",fd_pilot_file);
      $stop;
    end

    $fscanf(fd_info,"%d",ofdm_symbols);
    $display("Number of OFDM symbols: %d",ofdm_symbols);
    
    #(CLOCK_PERIOD*6);

    for (int k = 0; k < ofdm_symbols; k++) begin
      for (int i = 0; i < 256; i++) begin
        $fscanf(fd,"%d, %d",i_data1,q_data1);
        $fscanf(fd,"%d, %d",i_data2,q_data2);
        $fscanf(fd,"%d, %d",i_data3,q_data3);
        $fscanf(fd,"%d, %d",i_data4,q_data4);
        in_axis_tdata                 <= {q_data4,i_data4,q_data3,i_data3,
                                          q_data2,i_data2,q_data1,i_data1};
        i_rx_pilot                    <= i_data4;
        q_rx_pilot                    <= q_data4;
        pilot_rx_tdata                <= {q_data4,i_data4};
        if ((i > 26) && (i < 228)) begin
          $fscanf(fd_pilot_file,"%d, %d",i_tx_pilot,q_tx_pilot);
          pilot_tx_tdata              <= {q_tx_pilot,i_tx_pilot};
          $fdisplay(fd_coe_file,"%04h%04h,",$signed(q_tx_pilot),$signed(i_tx_pilot));
        end
        #CLOCK_PERIOD;
      end
      #(64*CLOCK_PERIOD);
    end

    #(CLOCK_PERIOD*320*ofdm_symbols);
    #2000;
    $fclose(fd);
    $fclose(fd_info);
    $fclose(fd_coe_file);
    $stop;
  end

endmodule
