  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vxorps %xmm1, %xmm1, %xmm8   #  1     0     4      OPC=vxorps_xmm_xmm_xmm  
  vminpd %xmm8, %xmm8, %xmm14  #  2     0x4   5      OPC=vminpd_xmm_xmm_xmm  
  hsubpd %xmm14, %xmm1         #  3     0x9   5      OPC=hsubpd_xmm_xmm      
  movhlps %xmm1, %xmm1         #  4     0xe   3      OPC=movhlps_xmm_xmm     
  retq                         #  5     0x11  1      OPC=retq                
                                                                             
.size target, .-target
