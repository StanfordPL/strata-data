  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vminps %xmm2, %xmm2, %xmm8  #  1     0     4      OPC=vminps_xmm_xmm_xmm  
  vmovupd %xmm3, %xmm1        #  2     0x4   4      OPC=vmovupd_xmm_xmm     
  vmaxps %ymm1, %ymm8, %ymm6  #  3     0x8   4      OPC=vmaxps_ymm_ymm_ymm  
  vmaxps %ymm6, %ymm1, %ymm1  #  4     0xc   4      OPC=vmaxps_ymm_ymm_ymm  
  retq                        #  5     0x10  1      OPC=retq                
                                                                            
.size target, .-target
