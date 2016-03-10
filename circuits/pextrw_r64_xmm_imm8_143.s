  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  movq $0x5, %rbx                     #  1     0     10     OPC=movq_r64_imm64           
  vpunpckhqdq %xmm1, %xmm1, %xmm1     #  2     0xa   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_byte_6_of_ymm1_to_r8b   #  3     0xe   5      OPC=callq_label              
  callq .move_byte_15_of_ymm1_to_r9b  #  4     0x13  5      OPC=callq_label              
  callq .move_008_016_r8b_r9b_bx      #  5     0x18  5      OPC=callq_label              
  retq                                #  6     0x1d  1      OPC=retq                     
                                                                                         
.size target, .-target
