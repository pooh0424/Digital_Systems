onerror {exit -code 1}
vlib work
vlog -work work Lab10_2.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Lab10_2_vlg_vec_tst -voptargs="+acc"
vcd file -direction Lab10_2.msim.vcd
vcd add -internal Lab10_2_vlg_vec_tst/*
vcd add -internal Lab10_2_vlg_vec_tst/i1/*
run -all
quit -f
