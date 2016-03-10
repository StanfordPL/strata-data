  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm10, %xmm11, %xmm5                #  2     0x5   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovdqa %xmm2, %xmm9                            #  3     0xa   4      OPC=vmovdqa_xmm_xmm         
  vandpd %xmm5, %xmm5, %xmm8                      #  4     0xe   4      OPC=vandpd_xmm_xmm_xmm      
  callq .move_64_128_xmm8_xmm9_xmm1               #  5     0x12  5      OPC=callq_label             
  retq                                            #  6     0x17  1      OPC=retq                    
                                                                                                    
.size target, .-target
