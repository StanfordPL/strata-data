  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode               
.target:                                          #        0     0      OPC=<label>          
  vmovupd %xmm2, %xmm1                            #  1     0     4      OPC=vmovupd_xmm_xmm  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label      
  callq .move_byte_17_of_ymm1_to_r8b              #  3     0x9   5      OPC=callq_label      
  callq .move_r8b_to_byte_24_of_ymm1              #  4     0xe   5      OPC=callq_label      
  vmovupd %xmm3, %xmm8                            #  5     0x13  4      OPC=vmovupd_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x17  5      OPC=callq_label      
  retq                                            #  7     0x1c  1      OPC=retq             
                                                                                             
.size target, .-target
