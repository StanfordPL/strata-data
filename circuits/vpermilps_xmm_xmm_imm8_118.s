  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmovddup %xmm2, %xmm9           #  1     0     4      OPC=vmovddup_xmm_xmm        
  vmovapd %xmm9, %xmm1            #  2     0x4   5      OPC=vmovapd_xmm_xmm         
  vsubsd %xmm9, %xmm9, %xmm11     #  3     0x9   5      OPC=vsubsd_xmm_xmm_xmm      
  vminpd %ymm11, %ymm1, %ymm4     #  4     0xe   5      OPC=vminpd_ymm_ymm_ymm      
  vunpckhps %xmm9, %xmm4, %xmm1   #  5     0x13  5      OPC=vunpckhps_xmm_xmm_xmm   
  vpunpckhdq %xmm1, %xmm2, %xmm1  #  6     0x18  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  retq                            #  7     0x1c  1      OPC=retq                    
                                                                                    
.size target, .-target
