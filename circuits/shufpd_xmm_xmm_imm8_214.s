  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                    
.target:                         #        0     0      OPC=<label>               
  vmovdqu %xmm2, %xmm12          #  1     0     4      OPC=vmovdqu_xmm_xmm       
  vpor %xmm2, %xmm12, %xmm14     #  2     0x4   4      OPC=vpor_xmm_xmm_xmm      
  vaddps %xmm14, %xmm14, %xmm7   #  3     0x8   5      OPC=vaddps_xmm_xmm_xmm    
  vmovhlps %xmm12, %xmm7, %xmm7  #  4     0xd   5      OPC=vmovhlps_xmm_xmm_xmm  
  unpcklpd %xmm7, %xmm1          #  5     0x12  4      OPC=unpcklpd_xmm_xmm      
  retq                           #  6     0x16  1      OPC=retq                  
                                                                                 
.size target, .-target
