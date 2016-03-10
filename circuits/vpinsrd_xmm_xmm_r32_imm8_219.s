  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  movd %ebx, %xmm14                    #  1     0     5      OPC=movd_xmm_r32             
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label              
  vpunpckldq %xmm14, %xmm13, %xmm4     #  3     0xa   5      OPC=vpunpckldq_xmm_xmm_xmm   
  vpunpcklqdq %xmm4, %xmm2, %xmm1      #  4     0xf   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                 #  5     0x13  1      OPC=retq                     
                                                                                          
.size target, .-target
