////////////////////////////////////////////////////////
// Jared Hermans
//
// Description: Separates CP and non CP in AXIS 
////////////////////////////////////////////////////////

module cp_rm
  (
    input logic                   s_axis_aclk,
    input logic                   s_axis_aresetn,

    input logic  [127:0]          s_equalizer_in_axis_tdata,
    input logic                   s_equalizer_in_axis_tvalid,
    input logic  [7:0]            s_equalizer_in_axis_tid,
    input logic  [7:0]            s_equalizer_in_axis_tuser,
    input logic                   s_equalizer_in_axis_tlast,

    output logic [127:0]          m_cp_rm_axis_tdata,
    output logic                  m_cp_rm_axis_tvalid,
    output logic [7:0]            m_cp_rm_axis_tid,
    output logic [7:0]            m_cp_rm_axis_tuser,
    output logic                  m_cp_rm_axis_tlast,

    output logic [127:0]          m_cp_axis_tdata,
    output logic                  m_cp_rm_axis_tvalid,
    output logic [7:0]            m_cp_rm_axis_tid,
    output logic [7:0]            m_cp_rm_axis_tuser,
    output logic                  m_cp_rm_axis_tlast
  );

  logic [10:0]                    cp_counter                  = 9'b0;
  logic                           frame_current               = 1'b0;
  logic                           in_tlast;
  logic                           in_tvalid;

  // Assert frame_current to indicate a packet is being received
  always_ff @(posedge s_axis_aclk) begin
    if (s_equalizer_in_axis_tlast)
      frame_current               <= 1'b1;
  end

  // Create counter to cycle between all samples of OFDM symbol
  always_ff @(posedge s_axis_aclk) begin
    if (s_equalizer_in_axis_tlast)
      cp_counter                  <= '0;
    else begin
      if (frame_current)
        cp_counter                <= cp_counter + 1'b1;
    end
  end

  // Delay tvalid
  always_ff @(posedge s_axis_aclk) begin
    in_tlast                      <= s_equalizer_in_axis_tlast;
    in_tvalid                     <= s_equalizer_in_axis_tvalid;
  end

  // Create cp removed stream and cp stream
  always_ff @(posedge s_axis_aclk) begin
    case (in_tvalid)
      1'b0: begin
        m_cp_rm_axis_tdata        <= 128'b0;
        m_cp_rm_axis_tvalid       <= 1'b0;
        m_cp_rm_axis_tid          <= 8'b0;
        m_cp_rm_axis_tuser        <= 8'b0;
        m_cp_rm_axis_tlast        <= 1'b0;

        m_cp_axis_tdata           <= 128'b0;
        m_cp_axis_tvalid          <= 1'b0;
        m_cp_axis_tid             <= 8'b0;
        m_cp_axis_tuser           <= 8'b0;
        m_cp_axis_tlast           <= 1'b0;
      end

      1'b1:
        if (cp_counter < 9'd64) begin // CP = 246 samples / 4 parallelization factor
          m_cp_axis_tdata         <= in_tdata;
          m_cp_axis_tvalid        <= in_tvalid;
          m_cp_axis_tid           <= in_tid;
          m_cp_axis_tuser         <= in_tuser;
          m_cp_axis_tlast         <= in_tlast;

          m_cp_rm_axis_tdata      <= '0;
          m_cp_rm_axis_tvalid     <= 1'b0;
          m_cp_rm_axis_tid        <= '0;
          m_cp_rm_axis_tuser      <= '0;
          m_cp_rm_axis_tlast      <= 1'b0;
        end
        else begin
          m_cp_axis_tdata         <= '0;
          m_cp_axis_tvalid        <= 1'b0;
          m_cp_axis_tid           <= '0;
          m_cp_axis_tuser         <= '0;
          m_cp_axis_tlast         <= 1'b0;

          m_cp_rm_axis_tdata      <= in_tdata;
          m_cp_rm_axis_tvalid     <= in_tvalid;
          m_cp_rm_axis_tid        <= in_tid;
          m_cp_rm_axis_tuser      <= in_tuser;
          m_cp_rm_axis_tlast      <= in_tlast;
        end
      default: begin
        m_cp_rm_axis_tdata        <= 128'b0;
        m_cp_rm_axis_tvalid       <= 1'b0;
        m_cp_rm_axis_tid          <= 8'b0;
        m_cp_rm_axis_tuser        <= 8'b0;
        m_cp_rm_axis_tlast        <= 1'b0;

        m_cp_axis_tdata           <= 128'b0;
        m_cp_axis_tvalid          <= 1'b0;
        m_cp_axis_tid             <= 8'b0;
        m_cp_axis_tuser           <= 8'b0;
        m_cp_axis_tlast           <= 1'b0;
      end
    endcase;
  end

endmodule
