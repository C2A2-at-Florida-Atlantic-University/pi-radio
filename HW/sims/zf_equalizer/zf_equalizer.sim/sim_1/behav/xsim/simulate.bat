@echo off
REM ****************************************************************************
REM Vivado (TM) v2022.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Wed Mar 01 11:34:08 -0500 2023
REM SW Build 3526262 on Mon Apr 18 15:48:16 MDT 2022
REM
REM IP Build 3524634 on Mon Apr 18 20:55:01 MDT 2022
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
REM simulate design
echo "xsim zf_equalizer_tb_behav -key {Behavioral:sim_1:Functional:zf_equalizer_tb} -tclbatch zf_equalizer_tb.tcl -protoinst "protoinst_files/zf_equalizer.protoinst" -view c:/Projects/pi-radio/HW/sims/zf_equalizer/zf_equalizer_tb_behav.wcfg -log simulate.log"
call xsim  zf_equalizer_tb_behav -key {Behavioral:sim_1:Functional:zf_equalizer_tb} -tclbatch zf_equalizer_tb.tcl -protoinst "protoinst_files/zf_equalizer.protoinst" -view c:/Projects/pi-radio/HW/sims/zf_equalizer/zf_equalizer_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
