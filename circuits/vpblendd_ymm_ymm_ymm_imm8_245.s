  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vmovsldup %xmm3, %xmm15                         #  2     0x5   4      OPC=vmovsldup_xmm_xmm      
  vorps %ymm3, %ymm3, %ymm1                       #  3     0x9   4      OPC=vorps_ymm_ymm_ymm      
  vmovss %xmm3, %xmm2, %xmm8                      #  4     0xd   4      OPC=vmovss_xmm_xmm_xmm     
  vunpckhps %ymm2, %ymm15, %ymm7                  #  5     0x11  4      OPC=vunpckhps_ymm_ymm_ymm  
  vpbroadcastd %xmm7, %ymm10                      #  6     0x15  5      OPC=vpbroadcastd_ymm_xmm   
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1a  5      OPC=callq_label            
  retq                                            #  8     0x1f  1      OPC=retq                   
                                                                                                   
.size target, .-target
