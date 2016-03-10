  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vmovupd %xmm2, %xmm1                            #  2     0x5   4      OPC=vmovupd_xmm_xmm          
  callq .move_128_256_xmm10_xmm11_ymm2            #  3     0x9   5      OPC=callq_label              
  vfmadd132pd %ymm2, %ymm1, %ymm2                 #  4     0xe   5      OPC=vfmadd132pd_ymm_ymm_ymm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm2  #  5     0x13  5      OPC=callq_label              
  vmulps %ymm2, %ymm1, %ymm1                      #  6     0x18  4      OPC=vmulps_ymm_ymm_ymm       
  retq                                            #  7     0x1c  1      OPC=retq                     
                                                                                                     
.size target, .-target
