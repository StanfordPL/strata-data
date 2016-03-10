  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  movd %ebx, %xmm7                 #  1     0     4      OPC=movd_xmm_r32             
  vunpcklpd %xmm2, %xmm2, %xmm3    #  2     0x4   4      OPC=vunpcklpd_xmm_xmm_xmm    
  vpunpckhqdq %xmm3, %xmm2, %xmm5  #  3     0x8   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovsldup %xmm7, %xmm2           #  4     0xc   4      OPC=vmovsldup_xmm_xmm        
  vunpcklps %ymm5, %ymm2, %ymm2    #  5     0x10  4      OPC=vunpcklps_ymm_ymm_ymm    
  vunpckhpd %xmm2, %xmm5, %xmm1    #  6     0x14  4      OPC=vunpckhpd_xmm_xmm_xmm    
  retq                             #  7     0x18  1      OPC=retq                     
                                                                                      
.size target, .-target
