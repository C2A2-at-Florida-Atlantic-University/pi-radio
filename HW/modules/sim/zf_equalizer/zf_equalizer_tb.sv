//---------------------------------------------------------------
// Jared Hermans
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
  int fd_div_1_file;
  int fd_div_1_full_file;

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
  logic [15:0]                      div1_amp,div1_phase;

  logic [15:0]                      i_tx_in_cordic,q_tx_in_cordic;
  logic [15:0]                      i_rx_in_cordic,q_rx_in_cordic;
  logic [15:0]                      i_tx_out_cordic,q_tx_out_cordic;
  logic [15:0]                      i_rx_out_cordic,q_rx_out_cordic;

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
    fd_cordic_rx_in_file = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/cordic_rx_in.txt","w");
    if (fd_cordic_rx_in_file) $display("File was opened successfully: %0d ",fd_cordic_rx_in_file);
    else begin
      $display("File was NOT opened successfully: %0d",fd_cordic_rx_in_file);
      $stop;
    end

    #(CLOCK_PERIOD*37);
    
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
    fd_cordic_tx_in_file = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/cordic_tx_in.txt","w");
    if (fd_cordic_tx_in_file) $display("File was opened successfully: %0d ",fd_cordic_tx_in_file);
    else begin
      $display("File was NOT opened successfully: %0d",fd_cordic_tx_in_file);
      $stop;
    end

    #(CLOCK_PERIOD*40);

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
    fd_cordic_rx_out_file = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/cordic_rx_out.txt","w");
    if (fd_cordic_rx_out_file) $display("File was opened successfully: %0d ",fd_cordic_rx_out_file);
    else begin
      $display("File was NOT opened successfully: %0d",fd_cordic_rx_out_file);
      $stop;
    end

    #(CLOCK_PERIOD*60);

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
    fd_cordic_tx_out_file = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/cordic_tx_out.txt","w");
    if (fd_cordic_tx_out_file) $display("File was opened successfully: %0d ",fd_cordic_tx_out_file);
    else begin
      $display("File was NOT opened successfully: %0d",fd_cordic_tx_out_file);
      $stop;
    end

    #(CLOCK_PERIOD*60);

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
    fd_div_abs_in_1_file = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/div_abs_in.txt","w");
    if (fd_div_abs_in_1_file) $display("File was opened successfully: %0d ",fd_div_abs_in_1_file);
    else begin
      $display("File was NOT opened successfully: %0d",fd_div_abs_in_1_file);
      $stop;
    end

    fd_div_ang_in_1_file = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/div_ang_in.txt","w");
    if (fd_div_ang_in_1_file) $display("File was opened successfully: %0d ",fd_div_ang_in_1_file);
    else begin
      $display("File was NOT opened successfully: %0d",fd_div_ang_in_1_file);
      $stop;
    end

    #(CLOCK_PERIOD*61);

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
    fd_div_1_file = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/div_1.txt","w");
    if (fd_div_1_file) $display("File was opened successfully: %0d ",fd_div_1_file);
    else begin
      $display("File was NOT opened successfully: %0d",fd_div_1_file);
      $stop;
    end

    fd_div_1_full_file = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/div_1_full.txt","w");
    if (fd_div_1_full_file) $display("File was opened successfully: %0d ",fd_div_1_full_file);
    else begin
      $display("File was NOT opened successfully: %0d",fd_div_1_full_file);
      $stop;
    end

    #(CLOCK_PERIOD*81);

    for (int k = 0; k < ofdm_symbols; k++) begin
      for (int i = 0; i < 256; i++) begin
        if (DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.m_axis_tvalid == 1) begin
          div1_amp = DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.m_axis_tdata[15:0];
          div1_phase = DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.m_axis_tdata[31:16];
          $fdisplay(fd_div_1_file,"%d, %d",$signed(div1_amp),$signed(div1_phase));
          div1_full = DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.m_abs_res_axis_tdata[15:0];
          div1_full_ang = DUT.zf_equalizer_i.Normalized_ZF_stage_1.channel_estimate_0.m_ang_res_axis_tdata;
          $fdisplay(fd_div_1_full_file,"%d, %d",$signed(div1_full),$signed(div1_full_ang));
        end
        #CLOCK_PERIOD;
      end
      #(CLOCK_PERIOD*64);
    end

    $fclose(fd_div_1_file);
    $fclose(fd_div_1_full_file);

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

    fd = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/fft_out.txt","r");
    if (fd) $display("File was opened successfully: %0d ",fd);
    else begin   
      $display("File was NOT opened successfully: %0d",fd);
      $stop;
    end

    fd_info = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/info.txt","r");
    if (fd_info) $display("File was opened successfully: %0d ",fd_info);
    else begin
      $display("File was NOT opened successfully: %0d",fd_info);
      $stop;
    end

    fd_coe_file = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/coe_signed_samples.txt","w");
    if (fd_coe_file) $display("File was opened successfully: %0d ",fd_coe_file);
    else begin
      $display("File was NOT opened successfully: %0d",fd_coe_file);
      $stop;
    end

    fd_pilot_file = $fopen("c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/pilot_data.txt","r");
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
