  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                
.target:                              #        0     0      OPC=<label>           
  callq .move_byte_0_of_ymm1_to_r8b   #  1     0     5      OPC=callq_label       
  movzwq %bx, %rax                    #  2     0x5   4      OPC=movzwq_r64_r16    
  xaddb %r8b, %al                     #  3     0x9   4      OPC=xaddb_r8_r8       
  cmovaw %bx, %bx                     #  4     0xd   4      OPC=cmovaw_r16_r16    
  cmovnlel %ebx, %r8d                 #  5     0x11  4      OPC=cmovnlel_r32_r32  
  callq .move_r8b_to_byte_13_of_ymm1  #  6     0x15  5      OPC=callq_label       
  retq                                #  7     0x1a  1      OPC=retq              
                                                                                  
.size target, .-target
