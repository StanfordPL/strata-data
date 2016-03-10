  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                  
.target:                               #        0    0      OPC=<label>             
  callq .move_128_64_xmm3_xmm12_xmm13  #  1     0    5      OPC=callq_label         
  vaddps %xmm12, %xmm2, %xmm6          #  2     0x5  5      OPC=vaddps_xmm_xmm_xmm  
  vmovss %xmm6, %xmm2, %xmm1           #  3     0xa  4      OPC=vmovss_xmm_xmm_xmm  
  retq                                 #  4     0xe  1      OPC=retq                
                                                                                    
.size target, .-target
