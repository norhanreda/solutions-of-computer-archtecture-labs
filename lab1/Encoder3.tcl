proc runSim {} {
vlog encoder.v
vsim encoder
add wave -position end  sim:/encoder/in
add wave -position end  sim:/encoder/enable
add wave -position end  sim:/encoder/out

    
   for {set i 0} {$i < 256} {incr i} {
   
                 
     # force signals based on a mask of the integer i
     set binRep [binary format c $i]
    binary scan $binRep B* binStr
    set s [string trimleft $binStr 0]
    
     force -freeze in  $s 0
     force -freeze enable  1 0
     run 
     
     force -freeze in  $s 0
     force -freeze enable  0 0
     run 

     
   
   }

 view wave
}