  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vmovddup %xmm3, %xmm1       #  1     0     4      OPC=vmovddup_xmm_xmm    
  rsqrtss %xmm1, %xmm3        #  2     0x4   4      OPC=rsqrtss_xmm_xmm     
  vmovshdup %xmm3, %xmm11     #  3     0x8   4      OPC=vmovshdup_xmm_xmm   
  vaddsd %xmm2, %xmm2, %xmm5  #  4     0xc   4      OPC=vaddsd_xmm_xmm_xmm  
  unpckhps %xmm11, %xmm5      #  5     0x10  4      OPC=unpckhps_xmm_xmm    
  unpcklpd %xmm5, %xmm1       #  6     0x14  4      OPC=unpcklpd_xmm_xmm    
  retq                        #  7     0x18  1      OPC=retq                
                                                                            
.size target, .-target
