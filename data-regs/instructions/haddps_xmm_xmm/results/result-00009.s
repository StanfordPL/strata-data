  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vhaddps %xmm2, %xmm1, %xmm7  #  1     0    4      OPC=vhaddps_xmm_xmm_xmm  
  vmovdqu %xmm7, %xmm5         #  2     0x4  4      OPC=vmovdqu_xmm_xmm      
  movapd %xmm5, %xmm1          #  3     0x8  4      OPC=movapd_xmm_xmm       
  retq                         #  4     0xc  1      OPC=retq                 
                                                                             
.size target, .-target
