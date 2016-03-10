  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vpbroadcastd %xmm3, %ymm13        #  1     0     5      OPC=vpbroadcastd_ymm_xmm    
  vmovsldup %xmm2, %xmm6            #  2     0x5   4      OPC=vmovsldup_xmm_xmm       
  vpunpckldq %xmm13, %xmm3, %xmm10  #  3     0x9   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vunpckhpd %xmm10, %xmm6, %xmm1    #  4     0xe   5      OPC=vunpckhpd_xmm_xmm_xmm   
  retq                              #  5     0x13  1      OPC=retq                    
                                                                                      
.size target, .-target
