  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  movsldup %xmm2, %xmm8               #  1     0     5      OPC=movsldup_xmm_xmm    
  vmovsd %xmm2, %xmm8, %xmm1          #  2     0x5   4      OPC=vmovsd_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r8_r9      #  3     0x9   5      OPC=callq_label         
  callq .move_byte_9_of_ymm1_to_r8b   #  4     0xe   5      OPC=callq_label         
  callq .move_r9b_to_byte_10_of_ymm1  #  5     0x13  5      OPC=callq_label         
  callq .move_r8b_to_byte_11_of_ymm1  #  6     0x18  5      OPC=callq_label         
  retq                                #  7     0x1d  1      OPC=retq                
                                                                                    
.size target, .-target
