  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_064_xmm2_r10_r11              #  1     0     5      OPC=callq_label             
  callq .move_064_128_r10_r11_xmm1              #  2     0x5   5      OPC=callq_label             
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  3     0xa   5      OPC=callq_label             
  vpunpckldq %xmm2, %xmm1, %xmm1                #  4     0xf   4      OPC=vpunpckldq_xmm_xmm_xmm  
  movss %xmm7, %xmm1                            #  5     0x13  4      OPC=movss_xmm_xmm           
  retq                                          #  6     0x17  1      OPC=retq                    
                                                                                                  
.size target, .-target
