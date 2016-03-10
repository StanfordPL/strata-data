  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vmovss %xmm2, %xmm2, %xmm10       #  1     0     4      OPC=vmovss_xmm_xmm_xmm      
  vmovshdup %ymm10, %ymm11          #  2     0x4   5      OPC=vmovshdup_ymm_ymm       
  vbroadcastss %xmm10, %ymm1        #  3     0x9   5      OPC=vbroadcastss_ymm_xmm    
  vpunpckhdq %ymm10, %ymm11, %ymm6  #  4     0xe   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpcklpd %xmm1, %xmm6, %xmm1     #  5     0x13  4      OPC=vunpcklpd_xmm_xmm_xmm   
  retq                              #  6     0x17  1      OPC=retq                    
                                                                                      
.size target, .-target
