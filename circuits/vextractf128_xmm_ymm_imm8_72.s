  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vmovdqa %xmm1, %xmm7                  #  1     0     4      OPC=vmovdqa_xmm_xmm     
  callq .move_256_128_ymm1_xmm12_xmm13  #  2     0x4   5      OPC=callq_label         
  callq .move_128_256_xmm12_xmm13_ymm2  #  3     0x9   5      OPC=callq_label         
  vmaxss %xmm7, %xmm2, %xmm1            #  4     0xe   4      OPC=vmaxss_xmm_xmm_xmm  
  retq                                  #  5     0x12  1      OPC=retq                
                                                                                      
.size target, .-target
