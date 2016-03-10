  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text           #  Line  RIP  Bytes  Opcode          
.target:         #        0    0      OPC=<label>     
  setpe %bh      #  1     0    3      OPC=setpe_rh    
  movb %bh, %ah  #  2     0x3  2      OPC=movb_rh_rh  
  retq           #  3     0x5  1      OPC=retq        
                                                      
.size target, .-target
