  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm7, %ymm2                        #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_64_xmm2_xmm10_xmm11           #  3     0xa   5      OPC=callq_label        
  vmovsldup %xmm11, %xmm2                       #  4     0xf   5      OPC=vmovsldup_xmm_xmm  
  movd %xmm2, %ebx                              #  5     0x14  4      OPC=movd_r32_xmm       
  retq                                          #  6     0x18  1      OPC=retq               
                                                                                             
.size target, .-target
