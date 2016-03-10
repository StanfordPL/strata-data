  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                  
.target:                               #        0    0      OPC=<label>             
  movups %xmm3, %xmm12                 #  1     0    4      OPC=movups_xmm_xmm      
  callq .move_128_64_xmm2_xmm10_xmm11  #  2     0x4  5      OPC=callq_label         
  vmovss %xmm10, %xmm12, %xmm1         #  3     0x9  5      OPC=vmovss_xmm_xmm_xmm  
  retq                                 #  4     0xe  1      OPC=retq                
                                                                                    
.size target, .-target
