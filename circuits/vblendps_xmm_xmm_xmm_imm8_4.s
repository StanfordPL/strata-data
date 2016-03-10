  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label             
  vpunpckhdq %xmm3, %xmm3, %xmm15      #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpunpckldq %xmm13, %xmm15, %xmm0     #  3     0x9   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovsd %xmm2, %xmm0, %xmm1           #  4     0xe   4      OPC=vmovsd_xmm_xmm_xmm      
  retq                                 #  5     0x12  1      OPC=retq                    
                                                                                         
.size target, .-target
