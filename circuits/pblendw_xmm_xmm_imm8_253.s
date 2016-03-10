  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode             
.target:                                          #        0     0      OPC=<label>        
  callq .move_byte_3_of_ymm1_to_r9b               #  1     0     5      OPC=callq_label    
  callq .move_byte_2_of_ymm1_to_r8b               #  2     0x5   5      OPC=callq_label    
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label    
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  4     0xf   5      OPC=callq_label    
  callq .move_r9b_to_byte_3_of_ymm1               #  5     0x14  5      OPC=callq_label    
  movzbw %r8b, %r9w                               #  6     0x19  5      OPC=movzbw_r16_r8  
  callq .move_r9b_to_byte_2_of_ymm1               #  7     0x1e  5      OPC=callq_label    
  retq                                            #  8     0x23  1      OPC=retq           
                                                                                           
.size target, .-target
