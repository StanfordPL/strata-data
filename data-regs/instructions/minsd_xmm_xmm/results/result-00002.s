  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP  Bytes  Opcode                    
.target:                         #        0    0      OPC=<label>               
  vpbroadcastq %xmm2, %xmm13     #  1     0    5      OPC=vpbroadcastq_xmm_xmm  
  vmovhlps %xmm13, %xmm1, %xmm6  #  2     0x5  5      OPC=vmovhlps_xmm_xmm_xmm  
  minpd %xmm6, %xmm1             #  3     0xa  4      OPC=minpd_xmm_xmm         
  retq                           #  4     0xe  1      OPC=retq                  
                                                                                
.size target, .-target
