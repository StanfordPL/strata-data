  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpunpckldq %xmm11, %xmm10, %xmm8     #  2     0x5   5      OPC=vpunpckldq_xmm_xmm_xmm   
  vpunpckhqdq %xmm10, %xmm8, %xmm12    #  3     0xa   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovapd %xmm12, %xmm3                #  4     0xf   5      OPC=vmovapd_xmm_xmm          
  vmovlhps %xmm8, %xmm3, %xmm1         #  5     0x14  5      OPC=vmovlhps_xmm_xmm_xmm     
  retq                                 #  6     0x19  1      OPC=retq                     
                                                                                          
.size target, .-target
