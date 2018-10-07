@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 3f9c2d91af6d4a5c88d2f95726597a56 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot final_simulation_behav xil_defaultlib.final_simulation -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
