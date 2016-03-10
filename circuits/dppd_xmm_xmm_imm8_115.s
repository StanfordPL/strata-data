  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmulpd %xmm2, %xmm1, %xmm14  #  1     0     4      OPC=vmulpd_xmm_xmm_xmm  
  haddpd %xmm14, %xmm1         #  2     0x4   5      OPC=haddpd_xmm_xmm      
  vdivss %xmm2, %xmm1, %xmm4   #  3     0x9   4      OPC=vdivss_xmm_xmm_xmm  
  unpckhpd %xmm4, %xmm1        #  4     0xd   4      OPC=unpckhpd_xmm_xmm    
  retq                         #  5     0x11  1      OPC=retq                
                                                                             
.size target, .-target
