  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                     
.target:                            #        0    0      OPC=<label>                
  vsqrtsd %xmm2, %xmm2, %xmm14      #  1     0    4      OPC=vsqrtsd_xmm_xmm_xmm    
  vunpckhpd %ymm14, %ymm14, %ymm14  #  2     0x4  5      OPC=vunpckhpd_ymm_ymm_ymm  
  vmovapd %xmm14, %xmm1             #  3     0x9  5      OPC=vmovapd_xmm_xmm        
  retq                              #  4     0xe  1      OPC=retq                   
                                                                                    
.size target, .-target
