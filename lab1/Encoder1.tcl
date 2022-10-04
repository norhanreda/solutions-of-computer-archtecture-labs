proc runSim {} {
vlog encoder.v
vsim encoder
add wave -position end  sim:/encoder/in
add wave -position end  sim:/encoder/enable
add wave -position end  sim:/encoder/out


   for {set i 0} {$i < 8} {incr i} {
   
                 
     # force signals based on a mask of the integer i
     force -freeze in  00000000 0
     force -freeze in($i)  1 0
     force -freeze enable  1 0
     run 
   }


   for {set i 0} {$i < 8} {incr i} {
   
                 
     # force signals based on a mask of the integer i
     force -freeze in  00000000 0
     force -freeze in($i)  1 0
     force -freeze enable  0 0
     run 
   }


 view wave
}