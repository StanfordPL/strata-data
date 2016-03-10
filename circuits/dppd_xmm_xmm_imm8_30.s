  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmulsd %xmm2, %xmm1, %xmm14  #  1     0     4      OPC=vmulsd_xmm_xmm_xmm  
  rsqrtss %xmm14, %xmm1        #  2     0x4   5      OPC=rsqrtss_xmm_xmm     
  andnpd %xmm1, %xmm1          #  3     0x9   4      OPC=andnpd_xmm_xmm      
  vaddsd %xmm14, %xmm1, %xmm9  #  4     0xd   5      OPC=vaddsd_xmm_xmm_xmm  
  unpcklpd %xmm9, %xmm1        #  5     0x12  5      OPC=unpcklpd_xmm_xmm    
  retq                         #  6     0x17  1      OPC=retq                
                                                                             
.size target, .-target
