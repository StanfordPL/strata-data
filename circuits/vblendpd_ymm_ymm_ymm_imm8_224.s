  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmovdqa %ymm2, %ymm4         #  1     0     4      OPC=vmovdqa_ymm_ymm     
  vminpd %ymm2, %ymm2, %ymm14  #  2     0x4   4      OPC=vminpd_ymm_ymm_ymm  
  vxorps %xmm14, %xmm4, %xmm3  #  3     0x8   5      OPC=vxorps_xmm_xmm_xmm  
  vpor %ymm14, %ymm3, %ymm1    #  4     0xd   5      OPC=vpor_ymm_ymm_ymm    
  retq                         #  5     0x12  1      OPC=retq                
                                                                             
.size target, .-target
