  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label             
  callq .move_128_64_xmm3_xmm10_xmm11  #  2     0x5   5      OPC=callq_label             
  vpunpckldq %xmm12, %xmm13, %xmm14    #  3     0xa   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vpunpckldq %xmm3, %xmm11, %xmm7      #  4     0xf   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovsd %xmm14, %xmm7, %xmm1          #  5     0x13  5      OPC=vmovsd_xmm_xmm_xmm      
  retq                                 #  6     0x18  1      OPC=retq                    
                                                                                         
.size target, .-target
