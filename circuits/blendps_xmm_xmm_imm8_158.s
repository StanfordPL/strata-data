  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  vmovq %xmm1, %xmm12               #  1     0     4      OPC=vmovq_xmm_xmm       
  vmovss %xmm12, %xmm2, %xmm2       #  2     0x4   5      OPC=vmovss_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r12_r13  #  3     0x9   5      OPC=callq_label         
  callq .move_064_128_r12_r13_xmm1  #  4     0xe   5      OPC=callq_label         
  retq                              #  5     0x13  1      OPC=retq                
                                                                                  
.size target, .-target
