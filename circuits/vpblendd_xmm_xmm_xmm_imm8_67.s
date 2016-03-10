  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                    
.target:                         #        0    0      OPC=<label>               
  vmaxsd %xmm3, %xmm2, %xmm0     #  1     0    4      OPC=vmaxsd_xmm_xmm_xmm    
  vmovlhps %xmm3, %xmm0, %xmm12  #  2     0x4  4      OPC=vmovlhps_xmm_xmm_xmm  
  vmovhlps %xmm12, %xmm2, %xmm1  #  3     0x8  5      OPC=vmovhlps_xmm_xmm_xmm  
  retq                           #  4     0xd  1      OPC=retq                  
                                                                                
.size target, .-target
