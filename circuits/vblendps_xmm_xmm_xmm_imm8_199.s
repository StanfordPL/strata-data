  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  movsldup %xmm3, %xmm14            #  1     0     5      OPC=movsldup_xmm_xmm        
  vmovapd %xmm3, %xmm7              #  2     0x5   4      OPC=vmovapd_xmm_xmm         
  vpunpckhdq %xmm2, %xmm14, %xmm12  #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovhlps %xmm12, %xmm7, %xmm15    #  4     0xd   5      OPC=vmovhlps_xmm_xmm_xmm    
  vunpcklpd %xmm15, %xmm3, %xmm1    #  5     0x12  5      OPC=vunpcklpd_xmm_xmm_xmm   
  retq                              #  6     0x17  1      OPC=retq                    
                                                                                      
.size target, .-target
