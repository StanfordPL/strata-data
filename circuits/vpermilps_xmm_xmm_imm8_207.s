  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vmovdqa %xmm7, %xmm3                          #  2     0x5   4      OPC=vmovdqa_xmm_xmm          
  vpunpcklqdq %xmm7, %xmm4, %xmm12              #  3     0x9   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vphsubd %xmm3, %xmm7, %xmm1                   #  4     0xd   5      OPC=vphsubd_xmm_xmm_xmm      
  vphaddd %xmm12, %xmm1, %xmm1                  #  5     0x12  5      OPC=vphaddd_xmm_xmm_xmm      
  retq                                          #  6     0x17  1      OPC=retq                     
                                                                                                   
.size target, .-target
