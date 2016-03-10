  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpmovzxwq %xmm11, %xmm3                         #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm       
  vpunpckhdq %xmm10, %xmm3, %xmm2                 #  3     0xa   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpmovzxdq %xmm2, %xmm5                          #  4     0xf   5      OPC=vpmovzxdq_xmm_xmm       
  vmovd %xmm5, %ebx                               #  5     0x14  4      OPC=vmovd_r32_xmm           
  retq                                            #  6     0x18  1      OPC=retq                    
                                                                                                    
.size target, .-target
