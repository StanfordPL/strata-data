  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_64_xmm1_xmm10_xmm11             #  1     0     5      OPC=callq_label             
  callq .move_128_64_xmm2_xmm8_xmm9               #  2     0x5   5      OPC=callq_label             
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm2  #  3     0xa   5      OPC=callq_label             
  vpunpckldq %xmm2, %xmm8, %xmm10                 #  4     0xf   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovhlps %xmm2, %xmm10, %xmm3                   #  5     0x13  4      OPC=vmovhlps_xmm_xmm_xmm    
  movdqa %xmm3, %xmm1                             #  6     0x17  4      OPC=movdqa_xmm_xmm          
  retq                                            #  7     0x1b  1      OPC=retq                    
                                                                                                    
.size target, .-target
