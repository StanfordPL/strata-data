  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  unpckhps %xmm1, %xmm2           #  1     0     3      OPC=unpckhps_xmm_xmm       
  vsubss %xmm2, %xmm1, %xmm5      #  2     0x3   4      OPC=vsubss_xmm_xmm_xmm     
  vunpckhps %xmm2, %xmm5, %xmm11  #  3     0x7   4      OPC=vunpckhps_xmm_xmm_xmm  
  unpcklpd %xmm11, %xmm1          #  4     0xb   5      OPC=unpcklpd_xmm_xmm       
  retq                            #  5     0x10  1      OPC=retq                   
                                                                                   
.size target, .-target
