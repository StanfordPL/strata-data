  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vmovdqa %xmm3, %xmm13                 #  1     0     4      OPC=vmovdqa_xmm_xmm     
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x4   5      OPC=callq_label         
  vmovsd %xmm10, %xmm10, %xmm12         #  3     0x9   5      OPC=vmovsd_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  4     0xe   5      OPC=callq_label         
  retq                                  #  5     0x13  1      OPC=retq                
                                                                                      
.size target, .-target
