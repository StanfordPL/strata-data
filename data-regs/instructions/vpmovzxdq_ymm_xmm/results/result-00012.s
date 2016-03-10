  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vmovhlps %xmm2, %xmm11, %xmm1                   #  2     0x5   4      OPC=vmovhlps_xmm_xmm_xmm   
  vbroadcastsd %xmm10, %ymm4                      #  3     0x9   5      OPC=vbroadcastsd_ymm_xmm   
  vpbroadcastq %xmm11, %ymm14                     #  4     0xe   5      OPC=vpbroadcastq_ymm_xmm   
  vmaxpd %ymm4, %ymm1, %ymm1                      #  5     0x13  4      OPC=vmaxpd_ymm_ymm_ymm     
  vunpckhpd %ymm14, %ymm1, %ymm1                  #  6     0x17  5      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_64_128_xmm8_xmm9_xmm1               #  7     0x1c  5      OPC=callq_label            
  retq                                            #  8     0x21  1      OPC=retq                   
                                                                                                   
.size target, .-target
