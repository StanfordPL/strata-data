  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text           #  Line  RIP  Bytes  Opcode            
.target:         #        0    0      OPC=<label>       
  xorw %ax, %ax  #  1     0    3      OPC=xorw_r16_r16  
  xorb %ah, %bh  #  2     0x3  2      OPC=xorb_rh_rh    
  sbbw %cx, %bx  #  3     0x5  3      OPC=sbbw_r16_r16  
  retq           #  4     0x8  1      OPC=retq          
                                                        
.size target, .-target
