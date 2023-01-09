@echo off
REM ****************************************************************************
REM Vivado (TM) v2022.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Mon Oct 03 12:29:07 -0400 2022
REM SW Build 3526262 on Mon Apr 18 15:48:16 MDT 2022
REM
REM IP Build 3524634 on Mon Apr 18 20:55:01 MDT 2022
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
REM simulate design
echo "xsim cfo_correction_top_tb_func_synth -key {Post-Synthesis:sim_1:Functional:cfo_correction_top_tb} -tclbatch cfo_correction_top_tb.tcl -protoinst "protoinst_files/cfo_correction.protoinst" -view c:/Projects/pi-radio/HW/sims/cfo_correction_top_tb_func_synth.wcfg -log simulate.log"
call xsim  cfo_correction_top_tb_func_synth -key {Post-Synthesis:sim_1:Functional:cfo_correction_top_tb} -tclbatch cfo_correction_top_tb.tcl -protoinst "protoinst_files/cfo_correction.protoinst" -view c:/Projects/pi-radio/HW/sims/cfo_correction_top_tb_func_synth.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0