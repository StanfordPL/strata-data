  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                       #  Line  RIP  Bytes  Opcode                 
.target:                     #        0    0      OPC=<label>            
  vorpd %xmm1, %xmm2, %xmm3  #  1     0    4      OPC=vorpd_xmm_xmm_xmm  
  vmovaps %xmm3, %xmm8       #  2     0x4  4      OPC=vmovaps_xmm_xmm    
  xorps %xmm8, %xmm1         #  3     0x8  4      OPC=xorps_xmm_xmm      
  retq                       #  4     0xc  1      OPC=retq               
                                                                         
.size target, .-target
