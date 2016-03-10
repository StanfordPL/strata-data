  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  vpbroadcastq %xmm3, %ymm13                      #  1     0     5      OPC=vpbroadcastq_ymm_xmm   
  movhlps %xmm3, %xmm3                            #  2     0x5   3      OPC=movhlps_xmm_xmm        
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0x8   5      OPC=callq_label            
  vpbroadcastq %xmm3, %ymm2                       #  4     0xd   5      OPC=vpbroadcastq_ymm_xmm   
  vunpckhpd %ymm2, %ymm13, %ymm1                  #  5     0x12  4      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x16  5      OPC=callq_label            
  retq                                            #  7     0x1b  1      OPC=retq                   
                                                                                                   
.size target, .-target
