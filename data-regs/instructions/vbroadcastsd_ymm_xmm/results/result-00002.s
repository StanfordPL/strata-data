  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP  Bytes  Opcode                
.target:                              #        0    0      OPC=<label>           
  vmovddup %xmm2, %xmm8               #  1     0    4      OPC=vmovddup_xmm_xmm  
  movddup %xmm2, %xmm9                #  2     0x4  5      OPC=movddup_xmm_xmm   
  callq .move_128_256_xmm8_xmm9_ymm1  #  3     0x9  5      OPC=callq_label       
  retq                                #  4     0xe  1      OPC=retq              
                                                                                 
.size target, .-target
