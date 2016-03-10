  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  cmpw %bx, %ax    #  1     0    3      OPC=cmpw_r16_r16    
  movw %bx, %ax    #  2     0x3  3      OPC=movw_r16_r16    
  cmovew %cx, %bx  #  3     0x6  4      OPC=cmovew_r16_r16  
  retq             #  4     0xa  1      OPC=retq            
                                                            
.size target, .-target
