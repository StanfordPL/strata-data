  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  setnge %dl       #  1     0    3      OPC=setnge_r8       
  salb $0x1, %dl   #  2     0x3  2      OPC=salb_r8_one     
  cmovzw %cx, %bx  #  3     0x5  4      OPC=cmovzw_r16_r16  
  retq             #  4     0x9  1      OPC=retq            
                                                            
.size target, .-target
