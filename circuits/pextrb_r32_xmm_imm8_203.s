  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode             
.target:                              #        0     0      OPC=<label>        
  callq .move_byte_11_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label    
  callq .move_byte_1_of_ymm1_to_r8b   #  2     0x5   5      OPC=callq_label    
  xchgb %r9b, %r8b                    #  3     0xa   3      OPC=xchgb_r8_r8    
  movzbl %r8b, %ebx                   #  4     0xd   4      OPC=movzbl_r32_r8  
  retq                                #  5     0x11  1      OPC=retq           
                                                                               
.size target, .-target
