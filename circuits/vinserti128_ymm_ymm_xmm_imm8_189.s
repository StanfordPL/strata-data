  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vbroadcastsd %xmm3, %ymm4                       #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm   
  punpckhqdq %xmm4, %xmm3                         #  3     0xa   4      OPC=punpckhqdq_xmm_xmm     
  vpbroadcastq %xmm3, %ymm7                       #  4     0xe   5      OPC=vpbroadcastq_ymm_xmm   
  vunpckhpd %ymm7, %ymm4, %ymm1                   #  5     0x13  4      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x17  5      OPC=callq_label            
  retq                                            #  7     0x1c  1      OPC=retq                   
                                                                                                   
.size target, .-target
