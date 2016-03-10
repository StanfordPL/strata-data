  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vandnps %xmm1, %xmm1, %xmm6  #  1     0    4      OPC=vandnps_xmm_xmm_xmm  
  xorps %xmm1, %xmm1           #  2     0x4  3      OPC=xorps_xmm_xmm        
  sqrtsd %xmm6, %xmm1          #  3     0x7  4      OPC=sqrtsd_xmm_xmm       
  retq                         #  4     0xb  1      OPC=retq                 
                                                                             
.size target, .-target
