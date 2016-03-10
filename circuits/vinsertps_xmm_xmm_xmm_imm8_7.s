  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vxorpd %xmm7, %xmm7, %xmm11     #  1     0     4      OPC=vxorpd_xmm_xmm_xmm      
  vsubss %xmm2, %xmm11, %xmm1     #  2     0x4   4      OPC=vsubss_xmm_xmm_xmm      
  vpunpckhdq %xmm2, %xmm1, %xmm8  #  3     0x8   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  unpckhps %xmm8, %xmm1           #  4     0xc   4      OPC=unpckhps_xmm_xmm        
  retq                            #  5     0x10  1      OPC=retq                    
                                                                                    
.size target, .-target
