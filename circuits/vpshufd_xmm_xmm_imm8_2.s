  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vbroadcastss %xmm2, %ymm1         #  1     0     5      OPC=vbroadcastss_ymm_xmm    
  vminpd %xmm1, %xmm1, %xmm8        #  2     0x5   4      OPC=vminpd_xmm_xmm_xmm      
  vmovapd %xmm2, %xmm10             #  3     0x9   4      OPC=vmovapd_xmm_xmm         
  vpunpckhdq %xmm1, %xmm10, %xmm15  #  4     0xd   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpcklpd %xmm8, %xmm15, %xmm1    #  5     0x11  5      OPC=vunpcklpd_xmm_xmm_xmm   
  retq                              #  6     0x16  1      OPC=retq                    
                                                                                      
.size target, .-target
