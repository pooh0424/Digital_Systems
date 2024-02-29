onerror {exit -code 1}
vlib work
vlog -work work Lab2_1_1.vo
vlog -work work Waveform1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Lab2_1_1_vlg_vec_tst -voptargs="+acc"
vcd file -direction Lab2_1_1.msim.vcd
vcd add -internal Lab2_1_1_vlg_vec_tst/*
vcd add -internal Lab2_1_1_vlg_vec_tst/i1/*
run -all
quit -f
