  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmovsldup %ymm2, %ymm3          #  1     0     4      OPC=vmovsldup_ymm_ymm       
  vpunpckhdq %ymm3, %ymm2, %ymm9  #  2     0x4   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  unpcklpd %xmm2, %xmm3           #  3     0x8   4      OPC=unpcklpd_xmm_xmm        
  vunpcklps %ymm9, %ymm3, %ymm3   #  4     0xc   5      OPC=vunpcklps_ymm_ymm_ymm   
  vunpckhpd %ymm3, %ymm9, %ymm1   #  5     0x11  4      OPC=vunpckhpd_ymm_ymm_ymm   
  retq                            #  6     0x15  1      OPC=retq                    
                                                                                    
.size target, .-target
