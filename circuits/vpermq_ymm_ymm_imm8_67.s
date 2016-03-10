  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vmaxps %ymm2, %ymm2, %ymm13           #  1     0     4      OPC=vmaxps_ymm_ymm_ymm     
  vmovups %ymm13, %ymm1                 #  2     0x4   5      OPC=vmovups_ymm_ymm        
  vunpcklpd %ymm13, %ymm2, %ymm8        #  3     0x9   5      OPC=vunpcklpd_ymm_ymm_ymm  
  callq .move_256_128_ymm1_xmm10_xmm11  #  4     0xe   5      OPC=callq_label            
  vmovhlps %xmm11, %xmm8, %xmm12        #  5     0x13  5      OPC=vmovhlps_xmm_xmm_xmm   
  callq .move_128_256_xmm12_xmm13_ymm1  #  6     0x18  5      OPC=callq_label            
  retq                                  #  7     0x1d  1      OPC=retq                   
                                                                                         
.size target, .-target
