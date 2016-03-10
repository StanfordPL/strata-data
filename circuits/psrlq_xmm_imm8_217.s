  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  movups %xmm1, %xmm14         #  1     0    4      OPC=movups_xmm_xmm      
  vminps %xmm14, %xmm1, %xmm4  #  2     0x4  5      OPC=vminps_xmm_xmm_xmm  
  xorpd %xmm4, %xmm1           #  3     0x9  4      OPC=xorpd_xmm_xmm       
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
