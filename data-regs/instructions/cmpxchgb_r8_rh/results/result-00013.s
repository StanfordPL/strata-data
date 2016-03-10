  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode              
.target:              #        0    0      OPC=<label>         
  movsbl %bh, %ebp    #  1     0    3      OPC=movsbl_r32_rh   
  cmpxchgb %bpl, %cl  #  2     0x3  4      OPC=cmpxchgb_r8_r8  
  retq                #  3     0x7  1      OPC=retq            
                                                               
.size target, .-target
