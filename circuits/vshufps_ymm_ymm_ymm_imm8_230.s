  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  vunpckhpd %ymm3, %ymm3, %ymm6     #  1     0     4      OPC=vunpckhpd_ymm_ymm_ymm     
  vunpcklps %xmm2, %xmm2, %xmm8     #  2     0x4   4      OPC=vunpcklps_xmm_xmm_xmm     
  vfnmadd213pd %xmm3, %xmm8, %xmm8  #  3     0x8   5      OPC=vfnmadd213pd_xmm_xmm_xmm  
  maxsd %xmm6, %xmm6                #  4     0xd   4      OPC=maxsd_xmm_xmm             
  vunpcklps %ymm8, %ymm2, %ymm1     #  5     0x11  5      OPC=vunpcklps_ymm_ymm_ymm     
  vpunpckhdq %ymm1, %ymm2, %ymm5    #  6     0x16  4      OPC=vpunpckhdq_ymm_ymm_ymm    
  vunpcklpd %ymm6, %ymm5, %ymm1     #  7     0x1a  4      OPC=vunpcklpd_ymm_ymm_ymm     
  retq                              #  8     0x1e  1      OPC=retq                      
                                                                                        
.size target, .-target
