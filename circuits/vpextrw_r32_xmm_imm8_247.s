  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  callq .move_byte_15_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label     
  callq .move_byte_14_of_ymm1_to_r8b  #  2     0x5   5      OPC=callq_label     
  callq .move_008_016_r8b_r9b_bx      #  3     0xa   5      OPC=callq_label     
  movzwq %bx, %rbx                    #  4     0xf   4      OPC=movzwq_r64_r16  
  retq                                #  5     0x13  1      OPC=retq            
                                                                                
.size target, .-target
