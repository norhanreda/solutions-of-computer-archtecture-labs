vlog encoder.v
vsim encoder
add wave -position end  sim:/encoder/in
add wave -position end  sim:/encoder/enable
add wave -position end  sim:/encoder/out
  
 for {set i 0} {$i < 2 }{incr i} 
{
 for {set i 0} {$i < 2 }{incr i}
{
     # force signals based on a mask of the integer i
     force -freeze sim:/encoder/in     00000000 0
     force -freeze sim:/encoder/in($i) 1 0
     force -freeze sim:/encoder/enable 1 0
     run
}
}