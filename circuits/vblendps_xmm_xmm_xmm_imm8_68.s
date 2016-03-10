  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label             
  movupd %xmm7, %xmm11                            #  2     0x5   5      OPC=movupd_xmm_xmm          
  vpunpckhdq %xmm2, %xmm3, %xmm10                 #  3     0xa   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovdqa %xmm2, %xmm1                            #  4     0xe   4      OPC=vmovdqa_xmm_xmm         
  callq .move_128_64_xmm2_xmm8_xmm9               #  5     0x12  5      OPC=callq_label             
  movaps %xmm5, %xmm9                             #  6     0x17  4      OPC=movaps_xmm_xmm          
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1b  5      OPC=callq_label             
  retq                                            #  8     0x20  1      OPC=retq                    
                                                                                                    
.size target, .-target
