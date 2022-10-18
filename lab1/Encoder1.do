vlog encoder.v
vsim encoder
add wave -position end  sim:/encoder/in
add wave -position end  sim:/encoder/enable
add wave -position end  sim:/encoder/out


force -freeze sim:/encoder/in 00000001 0
force -freeze sim:/encoder/enable 1 0
run
force -freeze sim:/encoder/in 00000010 0
force -freeze sim:/encoder/enable 1 0
run
force -freeze sim:/encoder/in 00000100 0
force -freeze sim:/encoder/enable 1 0
run
force -freeze sim:/encoder/in 00001000 0
force -freeze sim:/encoder/enable 1 0
run
force -freeze sim:/encoder/in 00010000 0
force -freeze sim:/encoder/enable 1 0
run
force -freeze sim:/encoder/in 00100000 0
force -freeze sim:/encoder/enable 1 0
run
force -freeze sim:/encoder/in 01000000 0
force -freeze sim:/encoder/enable 1 0
run
force -freeze sim:/encoder/in 10000000 0
force -freeze sim:/encoder/enable 1 0
run
force -freeze sim:/encoder/in 00000001 0
force -freeze sim:/encoder/enable 0 0
run
force -freeze sim:/encoder/in 00000010 0
force -freeze sim:/encoder/enable 0 0
run
force -freeze sim:/encoder/in 00000100 0
force -freeze sim:/encoder/enable 0 0
run
force -freeze sim:/encoder/in 00001000 0
force -freeze sim:/encoder/enable 0 0
run
force -freeze sim:/encoder/in 00010000 0
force -freeze sim:/encoder/enable 0 0
run
force -freeze sim:/encoder/in 00100000 0
force -freeze sim:/encoder/enable 0 0
run
force -freeze sim:/encoder/in 01000000 0
force -freeze sim:/encoder/enable 0 0
run
force -freeze sim:/encoder/in 10000000 0
force -freeze sim:/encoder/enable 0 0
run

force -freeze sim:/encoder/in 00000011 0
force -freeze sim:/encoder/enable 1 0
run
force -freeze sim:/encoder/in 00100010 0
force -freeze sim:/encoder/enable 1 0
run
force -freeze sim:/encoder/in 00000111 0
force -freeze sim:/encoder/enable 1 0
run
force -freeze sim:/encoder/in 10111000 0
force -freeze sim:/encoder/enable 1 0
run
force -freeze sim:/encoder/in 00010100 0
force -freeze sim:/encoder/enable 1 0
run
force -freeze sim:/encoder/in 10100000 0
force -freeze sim:/encoder/enable 1 0
run
force -freeze sim:/encoder/in 01001000 0
force -freeze sim:/encoder/enable 1 0
run
force -freeze sim:/encoder/in 10000001 0
force -freeze sim:/encoder/enable 1 0
run
view wave