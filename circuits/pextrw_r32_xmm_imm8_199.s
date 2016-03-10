  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  callq .move_byte_15_of_ymm1_to_r8b  #  1     0     5      OPC=callq_label     
  callq .move_r8b_to_byte_9_of_ymm1   #  2     0x5   5      OPC=callq_label     
  callq .move_128_064_xmm1_r8_r9      #  3     0xa   5      OPC=callq_label     
  callq .move_byte_14_of_ymm1_to_r9b  #  4     0xf   5      OPC=callq_label     
  movzwq %r9w, %rbx                   #  5     0x14  4      OPC=movzwq_r64_r16  
  retq                                #  6     0x18  1      OPC=retq            
                                                                                
.size target, .-target
