  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  xorps %xmm1, %xmm1           #  1     0    3      OPC=xorps_xmm_xmm       
  vmulss %xmm1, %xmm1, %xmm12  #  2     0x3  4      OPC=vmulss_xmm_xmm_xmm  
  punpckhqdq %xmm12, %xmm1     #  3     0x7  5      OPC=punpckhqdq_xmm_xmm  
  retq                         #  4     0xc  1      OPC=retq                
                                                                            
.size target, .-target
