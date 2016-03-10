  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vpbroadcastd %xmm2, %ymm7       #  1     0     5      OPC=vpbroadcastd_ymm_xmm    
  vrsqrtss %xmm2, %xmm2, %xmm8    #  2     0x5   4      OPC=vrsqrtss_xmm_xmm_xmm    
  vpunpckhdq %ymm8, %ymm7, %ymm9  #  3     0x9   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vmovddup %ymm9, %ymm7           #  4     0xe   5      OPC=vmovddup_ymm_ymm        
  vunpckhpd %xmm7, %xmm9, %xmm1   #  5     0x13  4      OPC=vunpckhpd_xmm_xmm_xmm   
  retq                            #  6     0x17  1      OPC=retq                    
                                                                                    
.size target, .-target
