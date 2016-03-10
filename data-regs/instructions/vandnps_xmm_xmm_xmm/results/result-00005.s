  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vminps %xmm3, %xmm3, %xmm10   #  1     0     4      OPC=vminps_xmm_xmm_xmm  
  vorpd %xmm2, %xmm10, %xmm11   #  2     0x4   4      OPC=vorpd_xmm_xmm_xmm   
  vpxor %xmm2, %xmm11, %xmm13   #  3     0x8   4      OPC=vpxor_xmm_xmm_xmm   
  vmaxps %ymm13, %ymm13, %ymm1  #  4     0xc   5      OPC=vmaxps_ymm_ymm_ymm  
  retq                          #  5     0x11  1      OPC=retq                
                                                                              
.size target, .-target
