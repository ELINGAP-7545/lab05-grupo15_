transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/QUARTUS/GitHub/lab05-grupo15_/alu/src/sum4bcc {D:/QUARTUS/GitHub/lab05-grupo15_/alu/src/sum4bcc/sum4b.v}

