  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                    
.target:                           #        0    0      OPC=<label>               
  vmovq %xmm1, %xmm15              #  1     0    4      OPC=vmovq_xmm_xmm         
  vmovhlps %xmm15, %xmm15, %xmm15  #  2     0x4  5      OPC=vmovhlps_xmm_xmm_xmm  
  pmovzxwd %xmm15, %xmm1           #  3     0x9  6      OPC=pmovzxwd_xmm_xmm      
  retq                             #  4     0xf  1      OPC=retq                  
                                                                                  
.size target, .-target
