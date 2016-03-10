  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmaxps %xmm1, %xmm1, %xmm14  #  1     0    4      OPC=vmaxps_xmm_xmm_xmm  
  xorpd %xmm14, %xmm1          #  2     0x4  5      OPC=xorpd_xmm_xmm       
  retq                         #  3     0x9  1      OPC=retq                
                                                                            
.size target, .-target
