  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  movb %bh, %cl    #  1     0    2      OPC=movb_r8_rh      
  cmpb %bh, %al    #  2     0x2  2      OPC=cmpb_r8_rh      
  movb %cl, %al    #  3     0x4  2      OPC=movb_r8_r8      
  cmovzw %cx, %bx  #  4     0x6  4      OPC=cmovzw_r16_r16  
  retq             #  5     0xa  1      OPC=retq            
                                                            
.size target, .-target
