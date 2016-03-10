  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vmovsldup %xmm3, %xmm10            #  1     0     4      OPC=vmovsldup_xmm_xmm        
  vpunpcklqdq %xmm10, %xmm2, %xmm11  #  2     0x4   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vmovshdup %ymm11, %ymm1            #  3     0x9   5      OPC=vmovshdup_ymm_ymm        
  vunpckhps %xmm10, %xmm1, %xmm11    #  4     0xe   5      OPC=vunpckhps_xmm_xmm_xmm    
  unpcklpd %xmm11, %xmm1             #  5     0x13  5      OPC=unpcklpd_xmm_xmm         
  retq                               #  6     0x18  1      OPC=retq                     
                                                                                        
.size target, .-target
