  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  movshdup %xmm3, %xmm4           #  1     0     4      OPC=movshdup_xmm_xmm        
  vpunpckhdq %xmm4, %xmm2, %xmm7  #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vminss %xmm3, %xmm3, %xmm8      #  3     0x8   4      OPC=vminss_xmm_xmm_xmm      
  vmovss %xmm2, %xmm8, %xmm1      #  4     0xc   4      OPC=vmovss_xmm_xmm_xmm      
  vunpcklpd %xmm7, %xmm1, %xmm1   #  5     0x10  4      OPC=vunpcklpd_xmm_xmm_xmm   
  retq                            #  6     0x14  1      OPC=retq                    
                                                                                    
.size target, .-target
