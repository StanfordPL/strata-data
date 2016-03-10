  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vunpckhps %ymm2, %ymm2, %ymm7   #  1     0     4      OPC=vunpckhps_ymm_ymm_ymm   
  vmovq %xmm7, %xmm8              #  2     0x4   4      OPC=vmovq_xmm_xmm           
  vunpcklps %ymm7, %ymm2, %ymm11  #  3     0x8   4      OPC=vunpcklps_ymm_ymm_ymm   
  vpunpckhdq %ymm8, %ymm2, %ymm2  #  4     0xc   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpckhpd %ymm2, %ymm11, %ymm1  #  5     0x11  4      OPC=vunpckhpd_ymm_ymm_ymm   
  retq                            #  6     0x15  1      OPC=retq                    
                                                                                    
.size target, .-target
