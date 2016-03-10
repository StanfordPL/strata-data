  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                     
.target:                           #        0    0      OPC=<label>                
  xorps %xmm10, %xmm10             #  1     0    4      OPC=xorps_xmm_xmm          
  vunpcklpd %xmm10, %xmm10, %xmm9  #  2     0x4  5      OPC=vunpcklpd_xmm_xmm_xmm  
  movdqu %xmm9, %xmm1              #  3     0x9  5      OPC=movdqu_xmm_xmm         
  retq                             #  4     0xe  1      OPC=retq                   
                                                                                   
.size target, .-target
