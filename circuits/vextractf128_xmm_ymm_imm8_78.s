  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vmovss %xmm11, %xmm10, %xmm15        #  2     0x5   5      OPC=vmovss_xmm_xmm_xmm     
  vunpcklpd %ymm15, %ymm1, %ymm4       #  3     0xa   5      OPC=vunpcklpd_ymm_ymm_ymm  
  vminss %xmm4, %xmm1, %xmm1           #  4     0xf   4      OPC=vminss_xmm_xmm_xmm     
  retq                                 #  5     0x13  1      OPC=retq                   
                                                                                        
.size target, .-target
