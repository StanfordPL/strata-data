  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vmulps %xmm2, %xmm1, %xmm10          #  2     0x5   4      OPC=vmulps_xmm_xmm_xmm  
  vmovss %xmm10, %xmm1, %xmm2          #  3     0x9   5      OPC=vmovss_xmm_xmm_xmm  
  vmovss %xmm2, %xmm2, %xmm10          #  4     0xe   4      OPC=vmovss_xmm_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1  #  5     0x12  5      OPC=callq_label         
  retq                                 #  6     0x17  1      OPC=retq                
                                                                                     
.size target, .-target
