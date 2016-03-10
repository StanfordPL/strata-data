  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  vpmovzxwd %xmm1, %xmm2                        #  1     0     5      OPC=vpmovzxwd_xmm_xmm       
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label             
  vpunpckhdq %xmm1, %xmm7, %xmm15               #  3     0xa   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpxor %xmm7, %xmm15, %xmm5                    #  4     0xe   4      OPC=vpxor_xmm_xmm_xmm       
  movd %xmm5, %ebx                              #  5     0x12  4      OPC=movd_r32_xmm            
  retq                                          #  6     0x16  1      OPC=retq                    
                                                                                                  
.size target, .-target
