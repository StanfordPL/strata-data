  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text        #  Line  RIP  Bytes  Opcode         
.target:      #        0    0      OPC=<label>    
  clc         #  1     0    1      OPC=clc        
  setnae %al  #  2     0x1  3      OPC=setnae_r8  
  notw %ax    #  3     0x4  3      OPC=notw_r16   
  retq        #  4     0x7  1      OPC=retq       
                                                  
.size target, .-target
