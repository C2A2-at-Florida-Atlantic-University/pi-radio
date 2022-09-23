@echo off
REM ****************************************************************************
REM Vivado (TM) v2022.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Fri Sep 23 09:16:34 -0400 2022
REM SW Build 3526262 on Mon Apr 18 15:48:16 MDT 2022
REM
REM IP Build 3524634 on Mon Apr 18 20:55:01 MDT 2022
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
REM simulate design
echo "xsim equalizer_top_tb_behav -key {Behavioral:sim_1:Functional:equalizer_top_tb} -tclbatch equalizer_top_tb.tcl -protoinst "protoinst_files/design_1.protoinst" -view C:/Projects/pi-radio/HW/Equalizer_design/equalizer_top_tb_behav.wcfg -log simulate.log"
call xsim  equalizer_top_tb_behav -key {Behavioral:sim_1:Functional:equalizer_top_tb} -tclbatch equalizer_top_tb.tcl -protoinst "protoinst_files/design_1.protoinst" -view C:/Projects/pi-radio/HW/Equalizer_design/equalizer_top_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
