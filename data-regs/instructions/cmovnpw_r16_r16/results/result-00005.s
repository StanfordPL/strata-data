  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  cmovpw %bx, %cx  #  1     0    4      OPC=cmovpw_r16_r16  
  callq .set_cf    #  2     0x4  5      OPC=callq_label     
  cmovbw %cx, %bx  #  3     0x9  4      OPC=cmovbw_r16_r16  
  retq             #  4     0xd  1      OPC=retq            
                                                            
.size target, .-target
