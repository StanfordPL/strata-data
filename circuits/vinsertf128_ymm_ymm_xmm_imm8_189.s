  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP  Bytes  Opcode              
.target:                                #        0    0      OPC=<label>         
  movaps %xmm3, %xmm13                  #  1     0    4      OPC=movaps_xmm_xmm  
  movdqa %xmm2, %xmm12                  #  2     0x4  5      OPC=movdqa_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  3     0x9  5      OPC=callq_label     
  retq                                  #  4     0xe  1      OPC=retq            
                                                                                 
.size target, .-target
