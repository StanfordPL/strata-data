  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP  Bytes  Opcode                  
.target:                                #        0    0      OPC=<label>             
  callq .move_256_128_ymm1_xmm12_xmm13  #  1     0    5      OPC=callq_label         
  vmovsd %xmm1, %xmm12, %xmm1           #  2     0x5  4      OPC=vmovsd_xmm_xmm_xmm  
  retq                                  #  3     0x9  1      OPC=retq                
                                                                                     
.size target, .-target
