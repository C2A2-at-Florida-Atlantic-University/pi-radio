set ipRepoPath $::env(ipRepoPath)
set ProjPath $::env(ProjPath)
cd $ipRepoPath/ssr_FFT
source fft_project.tcl

cd $ipRepoPath/ssr_FFT
exec pwd
open_bd_design {ssr_FFT/ssr_FFT.srcs/sources_1/bd/design_1/design_1.bd}
save_bd_design_as ssr_fft -force -freeze_boundary
add_files -norecurse ssr_FFT/ssr_FFT.srcs/sources_1/bd/ssr_fft/ssr_fft.bd
write_bd_tcl -force -no_ip_version $ProjPath/ssr_fft_bd.tcl
