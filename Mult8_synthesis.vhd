--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Mult8_synthesis.vhd
-- /___/   /\     Timestamp: Fri Feb 19 13:03:48 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Mult8 -w -dir netgen/synthesis -ofmt vhdl -sim Mult8.ngc Mult8_synthesis.vhd 
-- Device	: xc6slx16-2-csg324
-- Input file	: Mult8.ngc
-- Output file	: /home/ise/multiplier-assgnment1/netgen/synthesis/Mult8_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Mult8
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity Mult8 is
  port (
    Start : in STD_LOGIC := 'X'; 
    CLK : in STD_LOGIC := 'X'; 
    Reset : in STD_LOGIC := 'X'; 
    Done : out STD_LOGIC; 
    A : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    B : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    Result : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end Mult8;

architecture Structure of Mult8 is
  signal A_3_IBUF_0 : STD_LOGIC; 
  signal A_2_IBUF_1 : STD_LOGIC; 
  signal A_1_IBUF_2 : STD_LOGIC; 
  signal A_0_IBUF_3 : STD_LOGIC; 
  signal B_3_IBUF_4 : STD_LOGIC; 
  signal B_2_IBUF_5 : STD_LOGIC; 
  signal B_1_IBUF_6 : STD_LOGIC; 
  signal B_0_IBUF_7 : STD_LOGIC; 
  signal Start_IBUF_8 : STD_LOGIC; 
  signal CLK_BUFGP_9 : STD_LOGIC; 
  signal Reset_IBUF_BUFG_10 : STD_LOGIC; 
  signal F1_State_FSM_FFd1_23 : STD_LOGIC; 
  signal Done_OBUF_24 : STD_LOGIC; 
  signal R1_STAGES_7_FF_Qi_25 : STD_LOGIC; 
  signal R1_STAGES_6_FF_Qi_26 : STD_LOGIC; 
  signal R1_STAGES_5_FF_Qi_27 : STD_LOGIC; 
  signal R1_STAGES_4_FF_Qi_28 : STD_LOGIC; 
  signal R1_STAGES_3_FF_Qi_29 : STD_LOGIC; 
  signal R1_STAGES_2_FF_Qi_30 : STD_LOGIC; 
  signal R1_STAGES_1_FF_Qi_31 : STD_LOGIC; 
  signal R1_STAGES_0_FF_Qi_32 : STD_LOGIC; 
  signal REGclr : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal F1_State_FSM_FFd2_In1 : STD_LOGIC; 
  signal F1_State_FSM_FFd3_In : STD_LOGIC; 
  signal F1_State_FSM_FFd2_In : STD_LOGIC; 
  signal F1_State_FSM_FFd1_In : STD_LOGIC; 
  signal F1_State_FSM_FFd3 : STD_LOGIC; 
  signal F1_State_FSM_FFd2_48 : STD_LOGIC; 
  signal A1_Stages_2_OtherBits_FA_Mxor_Sum_xo_0_2 : STD_LOGIC; 
  signal A1_Stages_6_OtherBits_FA_Mxor_Sum_xo_0_1 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal F1_State_FSM_FFd3_LD_77 : STD_LOGIC; 
  signal F1_State_FSM_FFd3_C_78 : STD_LOGIC; 
  signal F1_State_FSM_FFd3_P_79 : STD_LOGIC; 
  signal SR2_Shift_St_7_rstpot_80 : STD_LOGIC; 
  signal SR2_Shift_St_6_rstpot_81 : STD_LOGIC; 
  signal SR2_Shift_St_5_rstpot_82 : STD_LOGIC; 
  signal SR2_Shift_St_4_rstpot_83 : STD_LOGIC; 
  signal SR2_Shift_St_3_rstpot_84 : STD_LOGIC; 
  signal SR2_Shift_St_2_rstpot_85 : STD_LOGIC; 
  signal SR2_Shift_St_1_rstpot_86 : STD_LOGIC; 
  signal SR2_Shift_St_0_rstpot_87 : STD_LOGIC; 
  signal SR1_Shift_St_3_rstpot_88 : STD_LOGIC; 
  signal SR1_Shift_St_2_rstpot_89 : STD_LOGIC; 
  signal SR1_Shift_St_1_rstpot_90 : STD_LOGIC; 
  signal SR1_Shift_St_0_rstpot_91 : STD_LOGIC; 
  signal Reset_IBUF_92 : STD_LOGIC; 
  signal SR1_Shift_St : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal SR2_Shift_St : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal MUXout : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N1
    );
  F1_State_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_9,
      CLR => Reset_IBUF_92,
      D => F1_State_FSM_FFd2_In,
      Q => F1_State_FSM_FFd2_48
    );
  F1_State_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_9,
      CLR => Reset_IBUF_92,
      D => F1_State_FSM_FFd1_In,
      Q => F1_State_FSM_FFd1_23
    );
  R1_STAGES_7_FF_Qi : FDC
    port map (
      C => CLK_BUFGP_9,
      CLR => REGclr,
      D => MUXout(7),
      Q => R1_STAGES_7_FF_Qi_25
    );
  R1_STAGES_6_FF_Qi : FDC
    port map (
      C => CLK_BUFGP_9,
      CLR => REGclr,
      D => MUXout(6),
      Q => R1_STAGES_6_FF_Qi_26
    );
  R1_STAGES_5_FF_Qi : FDC
    port map (
      C => CLK_BUFGP_9,
      CLR => REGclr,
      D => MUXout(5),
      Q => R1_STAGES_5_FF_Qi_27
    );
  R1_STAGES_4_FF_Qi : FDC
    port map (
      C => CLK_BUFGP_9,
      CLR => REGclr,
      D => MUXout(4),
      Q => R1_STAGES_4_FF_Qi_28
    );
  R1_STAGES_3_FF_Qi : FDC
    port map (
      C => CLK_BUFGP_9,
      CLR => REGclr,
      D => MUXout(3),
      Q => R1_STAGES_3_FF_Qi_29
    );
  R1_STAGES_2_FF_Qi : FDC
    port map (
      C => CLK_BUFGP_9,
      CLR => REGclr,
      D => MUXout(2),
      Q => R1_STAGES_2_FF_Qi_30
    );
  R1_STAGES_1_FF_Qi : FDC
    port map (
      C => CLK_BUFGP_9,
      CLR => REGclr,
      D => MUXout(1),
      Q => R1_STAGES_1_FF_Qi_31
    );
  R1_STAGES_0_FF_Qi : FDC
    port map (
      C => CLK_BUFGP_9,
      CLR => REGclr,
      D => MUXout(0),
      Q => R1_STAGES_0_FF_Qi_32
    );
  M1_Mmux_Y81 : LUT6
    generic map(
      INIT => X"9996CCCC9666CCCC"
    )
    port map (
      I0 => SR2_Shift_St(7),
      I1 => R1_STAGES_7_FF_Qi_25,
      I2 => R1_STAGES_6_FF_Qi_26,
      I3 => SR2_Shift_St(6),
      I4 => F1_State_FSM_FFd1_23,
      I5 => A1_Stages_6_OtherBits_FA_Mxor_Sum_xo_0_1,
      O => MUXout(7)
    );
  M1_Mmux_Y71 : LUT4
    generic map(
      INIT => X"9A6A"
    )
    port map (
      I0 => R1_STAGES_6_FF_Qi_26,
      I1 => SR2_Shift_St(6),
      I2 => F1_State_FSM_FFd1_23,
      I3 => A1_Stages_6_OtherBits_FA_Mxor_Sum_xo_0_1,
      O => MUXout(6)
    );
  M1_Mmux_Y41 : LUT6
    generic map(
      INIT => X"99969666AAAAAAAA"
    )
    port map (
      I0 => R1_STAGES_3_FF_Qi_29,
      I1 => SR2_Shift_St(3),
      I2 => SR2_Shift_St(2),
      I3 => A1_Stages_2_OtherBits_FA_Mxor_Sum_xo_0_2,
      I4 => R1_STAGES_2_FF_Qi_30,
      I5 => F1_State_FSM_FFd1_23,
      O => MUXout(3)
    );
  M1_Mmux_Y31 : LUT4
    generic map(
      INIT => X"96AA"
    )
    port map (
      I0 => R1_STAGES_2_FF_Qi_30,
      I1 => SR2_Shift_St(2),
      I2 => A1_Stages_2_OtherBits_FA_Mxor_Sum_xo_0_2,
      I3 => F1_State_FSM_FFd1_23,
      O => MUXout(2)
    );
  M1_Mmux_Y21 : LUT5
    generic map(
      INIT => X"D57F2A80"
    )
    port map (
      I0 => F1_State_FSM_FFd1_23,
      I1 => SR2_Shift_St(0),
      I2 => R1_STAGES_0_FF_Qi_32,
      I3 => SR2_Shift_St(1),
      I4 => R1_STAGES_1_FF_Qi_31,
      O => MUXout(1)
    );
  M1_Mmux_Y11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => R1_STAGES_0_FF_Qi_32,
      I1 => F1_State_FSM_FFd1_23,
      I2 => SR2_Shift_St(0),
      O => MUXout(0)
    );
  F1_State_FSM_FFd2_In11 : LUT5
    generic map(
      INIT => X"00FE0000"
    )
    port map (
      I0 => SR1_Shift_St(3),
      I1 => SR1_Shift_St(2),
      I2 => SR1_Shift_St(1),
      I3 => SR1_Shift_St(0),
      I4 => F1_State_FSM_FFd2_48,
      O => F1_State_FSM_FFd2_In1
    );
  F1_State_FSM_FFd3_In1 : LUT5
    generic map(
      INIT => X"CCCCFFCE"
    )
    port map (
      I0 => Start_IBUF_8,
      I1 => F1_State_FSM_FFd1_23,
      I2 => F1_State_FSM_FFd2_48,
      I3 => F1_State_FSM_FFd2_In1,
      I4 => F1_State_FSM_FFd3,
      O => F1_State_FSM_FFd3_In
    );
  A1_Stages_2_OtherBits_FA_Mxor_Sum_xo_0_21 : LUT4
    generic map(
      INIT => X"E8A0"
    )
    port map (
      I0 => R1_STAGES_1_FF_Qi_31,
      I1 => R1_STAGES_0_FF_Qi_32,
      I2 => SR2_Shift_St(1),
      I3 => SR2_Shift_St(0),
      O => A1_Stages_2_OtherBits_FA_Mxor_Sum_xo_0_2
    );
  A_3_IBUF : IBUF
    port map (
      I => A(3),
      O => A_3_IBUF_0
    );
  A_2_IBUF : IBUF
    port map (
      I => A(2),
      O => A_2_IBUF_1
    );
  A_1_IBUF : IBUF
    port map (
      I => A(1),
      O => A_1_IBUF_2
    );
  A_0_IBUF : IBUF
    port map (
      I => A(0),
      O => A_0_IBUF_3
    );
  B_3_IBUF : IBUF
    port map (
      I => B(3),
      O => B_3_IBUF_4
    );
  B_2_IBUF : IBUF
    port map (
      I => B(2),
      O => B_2_IBUF_5
    );
  B_1_IBUF : IBUF
    port map (
      I => B(1),
      O => B_1_IBUF_6
    );
  B_0_IBUF : IBUF
    port map (
      I => B(0),
      O => B_0_IBUF_7
    );
  Start_IBUF : IBUF
    port map (
      I => Start,
      O => Start_IBUF_8
    );
  Reset_IBUF : IBUF
    port map (
      I => Reset,
      O => Reset_IBUF_92
    );
  Result_7_OBUF : OBUF
    port map (
      I => R1_STAGES_7_FF_Qi_25,
      O => Result(7)
    );
  Result_6_OBUF : OBUF
    port map (
      I => R1_STAGES_6_FF_Qi_26,
      O => Result(6)
    );
  Result_5_OBUF : OBUF
    port map (
      I => R1_STAGES_5_FF_Qi_27,
      O => Result(5)
    );
  Result_4_OBUF : OBUF
    port map (
      I => R1_STAGES_4_FF_Qi_28,
      O => Result(4)
    );
  Result_3_OBUF : OBUF
    port map (
      I => R1_STAGES_3_FF_Qi_29,
      O => Result(3)
    );
  Result_2_OBUF : OBUF
    port map (
      I => R1_STAGES_2_FF_Qi_30,
      O => Result(2)
    );
  Result_1_OBUF : OBUF
    port map (
      I => R1_STAGES_1_FF_Qi_31,
      O => Result(1)
    );
  Result_0_OBUF : OBUF
    port map (
      I => R1_STAGES_0_FF_Qi_32,
      O => Result(0)
    );
  Done_OBUF : OBUF
    port map (
      I => Done_OBUF_24,
      O => Done
    );
  A1_Stages_4_OtherBits_FA_Mxor_Sum_xo_0_11_SW0 : LUT6
    generic map(
      INIT => X"EEE8E888E888E888"
    )
    port map (
      I0 => R1_STAGES_5_FF_Qi_27,
      I1 => SR2_Shift_St(5),
      I2 => R1_STAGES_4_FF_Qi_28,
      I3 => SR2_Shift_St(4),
      I4 => R1_STAGES_3_FF_Qi_29,
      I5 => SR2_Shift_St(3),
      O => N2
    );
  A1_Stages_4_OtherBits_FA_Mxor_Sum_xo_0_11_SW1 : LUT6
    generic map(
      INIT => X"EEE8EEE8EEE8E888"
    )
    port map (
      I0 => R1_STAGES_5_FF_Qi_27,
      I1 => SR2_Shift_St(5),
      I2 => R1_STAGES_4_FF_Qi_28,
      I3 => SR2_Shift_St(4),
      I4 => R1_STAGES_3_FF_Qi_29,
      I5 => SR2_Shift_St(3),
      O => N3
    );
  A1_Stages_6_OtherBits_FA_Mxor_Sum_xo_0_11 : LUT5
    generic map(
      INIT => X"FF17E800"
    )
    port map (
      I0 => R1_STAGES_2_FF_Qi_30,
      I1 => SR2_Shift_St(2),
      I2 => A1_Stages_2_OtherBits_FA_Mxor_Sum_xo_0_2,
      I3 => N3,
      I4 => N2,
      O => A1_Stages_6_OtherBits_FA_Mxor_Sum_xo_0_1
    );
  A1_Stages_4_OtherBits_FA_Mxor_Sum_xo_0_11_SW2 : LUT6
    generic map(
      INIT => X"FFF8F8F0F0808000"
    )
    port map (
      I0 => SR2_Shift_St(2),
      I1 => R1_STAGES_2_FF_Qi_30,
      I2 => R1_STAGES_4_FF_Qi_28,
      I3 => SR2_Shift_St(3),
      I4 => R1_STAGES_3_FF_Qi_29,
      I5 => SR2_Shift_St(4),
      O => N5
    );
  A1_Stages_4_OtherBits_FA_Mxor_Sum_xo_0_11_SW3 : LUT6
    generic map(
      INIT => X"FFEEFEEAAA88A880"
    )
    port map (
      I0 => R1_STAGES_4_FF_Qi_28,
      I1 => R1_STAGES_3_FF_Qi_29,
      I2 => SR2_Shift_St(2),
      I3 => SR2_Shift_St(3),
      I4 => R1_STAGES_2_FF_Qi_30,
      I5 => SR2_Shift_St(4),
      O => N6
    );
  M1_Mmux_Y61 : LUT6
    generic map(
      INIT => X"9A9A6A9A9A6A6A6A"
    )
    port map (
      I0 => R1_STAGES_5_FF_Qi_27,
      I1 => SR2_Shift_St(5),
      I2 => F1_State_FSM_FFd1_23,
      I3 => A1_Stages_2_OtherBits_FA_Mxor_Sum_xo_0_2,
      I4 => N6,
      I5 => N5,
      O => MUXout(5)
    );
  A1_Stages_4_OtherBits_FA_Mxor_Sum_xo_0_11_SW4 : LUT4
    generic map(
      INIT => X"E888"
    )
    port map (
      I0 => SR2_Shift_St(3),
      I1 => R1_STAGES_3_FF_Qi_29,
      I2 => SR2_Shift_St(2),
      I3 => R1_STAGES_2_FF_Qi_30,
      O => N8
    );
  A1_Stages_4_OtherBits_FA_Mxor_Sum_xo_0_11_SW5 : LUT4
    generic map(
      INIT => X"FEA8"
    )
    port map (
      I0 => SR2_Shift_St(3),
      I1 => SR2_Shift_St(2),
      I2 => R1_STAGES_2_FF_Qi_30,
      I3 => R1_STAGES_3_FF_Qi_29,
      O => N9
    );
  M1_Mmux_Y51 : LUT6
    generic map(
      INIT => X"9A9A9A6A6A9A6A6A"
    )
    port map (
      I0 => R1_STAGES_4_FF_Qi_28,
      I1 => SR2_Shift_St(4),
      I2 => F1_State_FSM_FFd1_23,
      I3 => A1_Stages_2_OtherBits_FA_Mxor_Sum_xo_0_2,
      I4 => N8,
      I5 => N9,
      O => MUXout(4)
    );
  F1_State_FSM_FFd3_LD : LD
    generic map(
      INIT => '1'
    )
    port map (
      D => N1,
      G => Reset_IBUF_BUFG_10,
      Q => F1_State_FSM_FFd3_LD_77
    );
  F1_State_FSM_FFd3_C : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_9,
      CLR => Reset_IBUF_92,
      D => F1_State_FSM_FFd3_In,
      Q => F1_State_FSM_FFd3_C_78
    );
  F1_State_FSM_FFd3_P : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => CLK_BUFGP_9,
      D => F1_State_FSM_FFd3_In,
      Q => F1_State_FSM_FFd3_P_79
    );
  F1_State_FSM_FFd31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => F1_State_FSM_FFd3_LD_77,
      I1 => F1_State_FSM_FFd3_C_78,
      I2 => F1_State_FSM_FFd3_P_79,
      O => F1_State_FSM_FFd3
    );
  SR2_Shift_St_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_9,
      CLR => Reset_IBUF_92,
      D => SR2_Shift_St_7_rstpot_80,
      Q => SR2_Shift_St(7)
    );
  SR2_Shift_St_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_9,
      CLR => Reset_IBUF_92,
      D => SR2_Shift_St_6_rstpot_81,
      Q => SR2_Shift_St(6)
    );
  SR2_Shift_St_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_9,
      CLR => Reset_IBUF_92,
      D => SR2_Shift_St_5_rstpot_82,
      Q => SR2_Shift_St(5)
    );
  SR2_Shift_St_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_9,
      CLR => Reset_IBUF_92,
      D => SR2_Shift_St_4_rstpot_83,
      Q => SR2_Shift_St(4)
    );
  SR2_Shift_St_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_9,
      CLR => Reset_IBUF_92,
      D => SR2_Shift_St_3_rstpot_84,
      Q => SR2_Shift_St(3)
    );
  SR2_Shift_St_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_9,
      CLR => Reset_IBUF_92,
      D => SR2_Shift_St_2_rstpot_85,
      Q => SR2_Shift_St(2)
    );
  SR2_Shift_St_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_9,
      CLR => Reset_IBUF_92,
      D => SR2_Shift_St_1_rstpot_86,
      Q => SR2_Shift_St(1)
    );
  SR2_Shift_St_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_9,
      CLR => Reset_IBUF_92,
      D => SR2_Shift_St_0_rstpot_87,
      Q => SR2_Shift_St(0)
    );
  SR1_Shift_St_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_9,
      CLR => Reset_IBUF_92,
      D => SR1_Shift_St_3_rstpot_88,
      Q => SR1_Shift_St(3)
    );
  SR1_Shift_St_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_9,
      CLR => Reset_IBUF_92,
      D => SR1_Shift_St_2_rstpot_89,
      Q => SR1_Shift_St(2)
    );
  SR1_Shift_St_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_9,
      CLR => Reset_IBUF_92,
      D => SR1_Shift_St_1_rstpot_90,
      Q => SR1_Shift_St(1)
    );
  SR1_Shift_St_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_9,
      CLR => Reset_IBUF_92,
      D => SR1_Shift_St_0_rstpot_91,
      Q => SR1_Shift_St(0)
    );
  SR2_Shift_St_3_rstpot : LUT5
    generic map(
      INIT => X"F0AACCCC"
    )
    port map (
      I0 => B_3_IBUF_4,
      I1 => SR2_Shift_St(3),
      I2 => SR2_Shift_St(2),
      I3 => F1_State_FSM_FFd2_48,
      I4 => F1_State_FSM_FFd3,
      O => SR2_Shift_St_3_rstpot_84
    );
  SR2_Shift_St_2_rstpot : LUT5
    generic map(
      INIT => X"CCAAF0F0"
    )
    port map (
      I0 => B_2_IBUF_5,
      I1 => SR2_Shift_St(1),
      I2 => SR2_Shift_St(2),
      I3 => F1_State_FSM_FFd2_48,
      I4 => F1_State_FSM_FFd3,
      O => SR2_Shift_St_2_rstpot_85
    );
  SR2_Shift_St_1_rstpot : LUT5
    generic map(
      INIT => X"F0AACCCC"
    )
    port map (
      I0 => B_1_IBUF_6,
      I1 => SR2_Shift_St(1),
      I2 => SR2_Shift_St(0),
      I3 => F1_State_FSM_FFd2_48,
      I4 => F1_State_FSM_FFd3,
      O => SR2_Shift_St_1_rstpot_86
    );
  SR1_Shift_St_2_rstpot : LUT5
    generic map(
      INIT => X"F0AACCCC"
    )
    port map (
      I0 => A_2_IBUF_1,
      I1 => SR1_Shift_St(2),
      I2 => SR1_Shift_St(3),
      I3 => F1_State_FSM_FFd2_48,
      I4 => F1_State_FSM_FFd3,
      O => SR1_Shift_St_2_rstpot_89
    );
  SR1_Shift_St_1_rstpot : LUT5
    generic map(
      INIT => X"F0AACCCC"
    )
    port map (
      I0 => A_1_IBUF_2,
      I1 => SR1_Shift_St(1),
      I2 => SR1_Shift_St(2),
      I3 => F1_State_FSM_FFd2_48,
      I4 => F1_State_FSM_FFd3,
      O => SR1_Shift_St_1_rstpot_90
    );
  SR1_Shift_St_0_rstpot : LUT5
    generic map(
      INIT => X"F0AACCCC"
    )
    port map (
      I0 => A_0_IBUF_3,
      I1 => SR1_Shift_St(0),
      I2 => SR1_Shift_St(1),
      I3 => F1_State_FSM_FFd2_48,
      I4 => F1_State_FSM_FFd3,
      O => SR1_Shift_St_0_rstpot_91
    );
  REGclr1 : LUT5
    generic map(
      INIT => X"AAAAFBEA"
    )
    port map (
      I0 => Reset_IBUF_92,
      I1 => F1_State_FSM_FFd3_LD_77,
      I2 => F1_State_FSM_FFd3_P_79,
      I3 => F1_State_FSM_FFd3_C_78,
      I4 => F1_State_FSM_FFd2_48,
      O => REGclr
    );
  F1_State_FSM_FFd1_In1 : LUT5
    generic map(
      INIT => X"00088088"
    )
    port map (
      I0 => F1_State_FSM_FFd2_48,
      I1 => SR1_Shift_St(0),
      I2 => F1_State_FSM_FFd3_LD_77,
      I3 => F1_State_FSM_FFd3_C_78,
      I4 => F1_State_FSM_FFd3_P_79,
      O => F1_State_FSM_FFd1_In
    );
  SR2_Shift_St_7_rstpot : LUT6
    generic map(
      INIT => X"FF1B1B1BE4000000"
    )
    port map (
      I0 => F1_State_FSM_FFd3_LD_77,
      I1 => F1_State_FSM_FFd3_C_78,
      I2 => F1_State_FSM_FFd3_P_79,
      I3 => SR2_Shift_St(6),
      I4 => F1_State_FSM_FFd2_48,
      I5 => SR2_Shift_St(7),
      O => SR2_Shift_St_7_rstpot_80
    );
  SR2_Shift_St_6_rstpot : LUT6
    generic map(
      INIT => X"FF1B1B1BE4000000"
    )
    port map (
      I0 => F1_State_FSM_FFd3_LD_77,
      I1 => F1_State_FSM_FFd3_C_78,
      I2 => F1_State_FSM_FFd3_P_79,
      I3 => SR2_Shift_St(5),
      I4 => F1_State_FSM_FFd2_48,
      I5 => SR2_Shift_St(6),
      O => SR2_Shift_St_6_rstpot_81
    );
  SR2_Shift_St_5_rstpot : LUT6
    generic map(
      INIT => X"FF1B1B1BE4000000"
    )
    port map (
      I0 => F1_State_FSM_FFd3_LD_77,
      I1 => F1_State_FSM_FFd3_C_78,
      I2 => F1_State_FSM_FFd3_P_79,
      I3 => SR2_Shift_St(4),
      I4 => F1_State_FSM_FFd2_48,
      I5 => SR2_Shift_St(5),
      O => SR2_Shift_St_5_rstpot_82
    );
  SR2_Shift_St_4_rstpot : LUT6
    generic map(
      INIT => X"FF1B1B1BE4000000"
    )
    port map (
      I0 => F1_State_FSM_FFd3_LD_77,
      I1 => F1_State_FSM_FFd3_C_78,
      I2 => F1_State_FSM_FFd3_P_79,
      I3 => SR2_Shift_St(3),
      I4 => F1_State_FSM_FFd2_48,
      I5 => SR2_Shift_St(4),
      O => SR2_Shift_St_4_rstpot_83
    );
  SR2_Shift_St_0_rstpot : LUT6
    generic map(
      INIT => X"1BFF1B1B00E40000"
    )
    port map (
      I0 => F1_State_FSM_FFd3_LD_77,
      I1 => F1_State_FSM_FFd3_C_78,
      I2 => F1_State_FSM_FFd3_P_79,
      I3 => F1_State_FSM_FFd2_48,
      I4 => B_0_IBUF_7,
      I5 => SR2_Shift_St(0),
      O => SR2_Shift_St_0_rstpot_87
    );
  SR1_Shift_St_3_rstpot : LUT6
    generic map(
      INIT => X"1BFF1B1B00E40000"
    )
    port map (
      I0 => F1_State_FSM_FFd3_LD_77,
      I1 => F1_State_FSM_FFd3_C_78,
      I2 => F1_State_FSM_FFd3_P_79,
      I3 => F1_State_FSM_FFd2_48,
      I4 => A_3_IBUF_0,
      I5 => SR1_Shift_St(3),
      O => SR1_Shift_St_3_rstpot_88
    );
  F1_State_FSM_FFd2_In2 : LUT5
    generic map(
      INIT => X"FFFFFDEC"
    )
    port map (
      I0 => F1_State_FSM_FFd3_LD_77,
      I1 => F1_State_FSM_FFd1_23,
      I2 => F1_State_FSM_FFd3_P_79,
      I3 => F1_State_FSM_FFd3_C_78,
      I4 => F1_State_FSM_FFd2_In1,
      O => F1_State_FSM_FFd2_In
    );
  F1_State_Done1 : LUT5
    generic map(
      INIT => X"00011011"
    )
    port map (
      I0 => F1_State_FSM_FFd2_48,
      I1 => F1_State_FSM_FFd1_23,
      I2 => F1_State_FSM_FFd3_LD_77,
      I3 => F1_State_FSM_FFd3_C_78,
      I4 => F1_State_FSM_FFd3_P_79,
      O => Done_OBUF_24
    );
  CLK_BUFGP : BUFGP
    port map (
      I => CLK,
      O => CLK_BUFGP_9
    );
  Reset_IBUF_BUFG : BUFG
    port map (
      O => Reset_IBUF_BUFG_10,
      I => Reset_IBUF_92
    );

end Structure;

