  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_064_xmm2_r12_r13              #  1     0     5      OPC=callq_label             
  callq .move_064_128_r12_r13_xmm3              #  2     0x5   5      OPC=callq_label             
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  3     0xa   5      OPC=callq_label             
  vpunpckldq %xmm6, %xmm7, %xmm4                #  4     0xf   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovshdup %xmm4, %xmm5                        #  5     0x13  4      OPC=vmovshdup_xmm_xmm       
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  6     0x17  5      OPC=callq_label             
  retq                                          #  7     0x1c  1      OPC=retq                    
                                                                                                  
.size target, .-target
