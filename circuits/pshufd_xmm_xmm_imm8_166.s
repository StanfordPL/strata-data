  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vmovss %xmm10, %xmm2, %xmm14                    #  2     0x5   5      OPC=vmovss_xmm_xmm_xmm      
  vmovhlps %xmm14, %xmm10, %xmm5                  #  3     0xa   5      OPC=vmovhlps_xmm_xmm_xmm    
  movdqa %xmm14, %xmm10                           #  4     0xf   5      OPC=movdqa_xmm_xmm          
  vpunpckldq %xmm10, %xmm5, %xmm11                #  5     0x14  5      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1             #  6     0x19  5      OPC=callq_label             
  retq                                            #  7     0x1e  1      OPC=retq                    
                                                                                                    
.size target, .-target
