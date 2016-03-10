  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vpunpcklqdq %xmm3, %xmm4, %xmm8               #  2     0x5   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  punpckhdq %xmm3, %xmm8                        #  3     0x9   5      OPC=punpckhdq_xmm_xmm        
  vmovdqu %xmm4, %xmm1                          #  4     0xe   4      OPC=vmovdqu_xmm_xmm          
  vpunpckldq %xmm1, %xmm5, %xmm1                #  5     0x12  4      OPC=vpunpckldq_xmm_xmm_xmm   
  unpcklpd %xmm8, %xmm1                         #  6     0x16  5      OPC=unpcklpd_xmm_xmm         
  retq                                          #  7     0x1b  1      OPC=retq                     
                                                                                                   
.size target, .-target
