  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label             
  movaps %xmm9, %xmm13               #  2     0x5   4      OPC=movaps_xmm_xmm          
  vpunpckldq %xmm8, %xmm13, %xmm4    #  3     0x9   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovlhps %xmm13, %xmm4, %xmm1      #  4     0xe   5      OPC=vmovlhps_xmm_xmm_xmm    
  retq                               #  5     0x13  1      OPC=retq                    
                                                                                       
.size target, .-target