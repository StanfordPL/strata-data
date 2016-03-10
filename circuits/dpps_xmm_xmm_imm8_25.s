  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  vmulps %xmm2, %xmm1, %xmm2                      #  1     0     4      OPC=vmulps_xmm_xmm_xmm     
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label            
  haddps %xmm8, %xmm1                             #  3     0x9   5      OPC=haddps_xmm_xmm         
  vaddpd %xmm8, %xmm9, %xmm15                     #  4     0xe   5      OPC=vaddpd_xmm_xmm_xmm     
  vpbroadcastd %xmm2, %ymm3                       #  5     0x13  5      OPC=vpbroadcastd_ymm_xmm   
  vunpcklps %xmm3, %xmm10, %xmm10                 #  6     0x18  4      OPC=vunpcklps_xmm_xmm_xmm  
  vaddpd %ymm10, %ymm15, %ymm8                    #  7     0x1c  5      OPC=vaddpd_ymm_ymm_ymm     
  punpckhqdq %xmm8, %xmm1                         #  8     0x21  5      OPC=punpckhqdq_xmm_xmm     
  retq                                            #  9     0x26  1      OPC=retq                   
                                                                                                   
.size target, .-target
