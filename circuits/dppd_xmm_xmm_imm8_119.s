  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                    
.target:                         #        0     0      OPC=<label>               
  vmulpd %xmm2, %xmm1, %xmm0     #  1     0     4      OPC=vmulpd_xmm_xmm_xmm    
  haddpd %xmm0, %xmm0            #  2     0x4   4      OPC=haddpd_xmm_xmm        
  vmovlhps %xmm0, %xmm0, %xmm13  #  3     0x8   4      OPC=vmovlhps_xmm_xmm_xmm  
  movdqu %xmm13, %xmm1           #  4     0xc   5      OPC=movdqu_xmm_xmm        
  retq                           #  5     0x11  1      OPC=retq                  
                                                                                 
.size target, .-target
