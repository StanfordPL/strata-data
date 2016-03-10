  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label             
  vmovss %xmm8, %xmm9, %xmm10        #  2     0x5   5      OPC=vmovss_xmm_xmm_xmm      
  vpunpckldq %xmm3, %xmm3, %xmm1     #  3     0xa   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovsd %xmm10, %xmm1, %xmm1        #  4     0xe   5      OPC=vmovsd_xmm_xmm_xmm      
  retq                               #  5     0x13  1      OPC=retq                    
                                                                                       
.size target, .-target
