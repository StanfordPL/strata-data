  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  xchgb %cl, %cl   #  1     0    2      OPC=xchgb_r8_r8     
  cmc              #  2     0x2  1      OPC=cmc             
  cmovbw %cx, %bx  #  3     0x3  4      OPC=cmovbw_r16_r16  
  retq             #  4     0x7  1      OPC=retq            
                                                            
.size target, .-target
