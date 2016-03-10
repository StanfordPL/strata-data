  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm8_xmm9               #  1     0     5      OPC=callq_label         
  vmovupd %xmm8, %xmm1                            #  2     0x5   5      OPC=vmovupd_xmm_xmm     
  vmaxps %ymm1, %ymm1, %ymm9                      #  3     0xa   4      OPC=vmaxps_ymm_ymm_ymm  
  callq .move_128_64_xmm1_xmm10_xmm11             #  4     0xe   5      OPC=callq_label         
  vmaxps %ymm1, %ymm1, %ymm11                     #  5     0x13  4      OPC=vmaxps_ymm_ymm_ymm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x17  5      OPC=callq_label         
  vmaxpd %ymm1, %ymm1, %ymm1                      #  7     0x1c  4      OPC=vmaxpd_ymm_ymm_ymm  
  retq                                            #  8     0x20  1      OPC=retq                
                                                                                                
.size target, .-target
