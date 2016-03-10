  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                  
.target:                               #        0    0      OPC=<label>             
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0    5      OPC=callq_label         
  vmovss %xmm3, %xmm10, %xmm1          #  2     0x5  4      OPC=vmovss_xmm_xmm_xmm  
  retq                                 #  3     0x9  1      OPC=retq                
                                                                                    
.size target, .-target
