  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP  Bytes  Opcode              
.target:                                #        0    0      OPC=<label>         
  movaps %xmm3, %xmm2                   #  1     0    3      OPC=movaps_xmm_xmm  
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x3  5      OPC=callq_label     
  callq .move_128_256_xmm12_xmm13_ymm1  #  3     0x8  5      OPC=callq_label     
  retq                                  #  4     0xd  1      OPC=retq            
                                                                                 
.size target, .-target
