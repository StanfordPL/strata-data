  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text           #  Line  RIP  Bytes  Opcode          
.target:         #        0    0      OPC=<label>     
  xorb %dh, %dh  #  1     0    2      OPC=xorb_rh_rh  
  movb %cl, %bh  #  2     0x2  2      OPC=movb_rh_r8  
  sbbb %bh, %bl  #  3     0x4  2      OPC=sbbb_r8_rh  
  retq           #  4     0x6  1      OPC=retq        
                                                      
.size target, .-target
