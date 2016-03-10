  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  cmovow %bx, %cx  #  1     0    4      OPC=cmovow_r16_r16  
  xchgw %bx, %cx   #  2     0x4  3      OPC=xchgw_r16_r16   
  xchgb %bh, %bh   #  3     0x7  2      OPC=xchgb_rh_rh     
  retq             #  4     0x9  1      OPC=retq            
                                                            
.size target, .-target
