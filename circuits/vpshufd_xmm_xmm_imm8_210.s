  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_064_xmm2_r12_r13              #  1     0     5      OPC=callq_label             
  callq .move_064_128_r12_r13_xmm2              #  2     0x5   5      OPC=callq_label             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  3     0xa   5      OPC=callq_label             
  vpunpckldq %xmm7, %xmm5, %xmm5                #  4     0xf   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vpunpckldq %xmm4, %xmm6, %xmm1                #  5     0x13  4      OPC=vpunpckldq_xmm_xmm_xmm  
  punpcklqdq %xmm5, %xmm1                       #  6     0x17  4      OPC=punpcklqdq_xmm_xmm      
  retq                                          #  7     0x1b  1      OPC=retq                    
                                                                                                  
.size target, .-target
