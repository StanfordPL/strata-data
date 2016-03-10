  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vunpcklpd %xmm2, %xmm2, %xmm13        #  1     0     4      OPC=vunpcklpd_xmm_xmm_xmm  
  vmaxps %ymm2, %ymm2, %ymm3            #  2     0x4   4      OPC=vmaxps_ymm_ymm_ymm     
  vmaxss %xmm2, %xmm13, %xmm8           #  3     0x8   4      OPC=vmaxss_xmm_xmm_xmm     
  callq .move_256_128_ymm3_xmm12_xmm13  #  4     0xc   5      OPC=callq_label            
  vunpckhpd %ymm2, %ymm13, %ymm9        #  5     0x11  4      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_128_256_xmm8_xmm9_ymm1    #  6     0x15  5      OPC=callq_label            
  retq                                  #  7     0x1a  1      OPC=retq                   
                                                                                         
.size target, .-target
