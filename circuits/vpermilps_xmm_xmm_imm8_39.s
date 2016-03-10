  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  movupd %xmm11, %xmm5                            #  2     0x5   5      OPC=movupd_xmm_xmm          
  vpunpckldq %xmm5, %xmm8, %xmm11                 #  3     0xa   4      OPC=vpunpckldq_xmm_xmm_xmm  
  movaps %xmm10, %xmm10                           #  4     0xe   4      OPC=movaps_xmm_xmm          
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm3  #  5     0x12  5      OPC=callq_label             
  vmovss %xmm5, %xmm3, %xmm1                      #  6     0x17  4      OPC=vmovss_xmm_xmm_xmm      
  retq                                            #  7     0x1b  1      OPC=retq                    
                                                                                                    
.size target, .-target
