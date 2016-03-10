  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm8_xmm9   #  1     0     5      OPC=callq_label            
  vmaxss %xmm8, %xmm8, %xmm12         #  2     0x5   5      OPC=vmaxss_xmm_xmm_xmm     
  callq .move_128_256_xmm8_xmm9_ymm3  #  3     0xa   5      OPC=callq_label            
  vunpckhpd %xmm9, %xmm3, %xmm10      #  4     0xf   5      OPC=vunpckhpd_xmm_xmm_xmm  
  vunpckhps %ymm10, %ymm12, %ymm14    #  5     0x14  5      OPC=vunpckhps_ymm_ymm_ymm  
  movapd %xmm14, %xmm1                #  6     0x19  5      OPC=movapd_xmm_xmm         
  retq                                #  7     0x1e  1      OPC=retq                   
                                                                                       
.size target, .-target
