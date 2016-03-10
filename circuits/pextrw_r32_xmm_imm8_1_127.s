  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vorpd %xmm4, %xmm7, %xmm0                     #  2     0x5   4      OPC=vorpd_xmm_xmm_xmm       
  vpmovzxwq %xmm7, %ymm10                       #  3     0x9   5      OPC=vpmovzxwq_ymm_xmm       
  vpunpckhdq %ymm0, %ymm10, %ymm10              #  4     0xe   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vmovd %xmm10, %ebx                            #  5     0x12  4      OPC=vmovd_r32_xmm           
  retq                                          #  6     0x16  1      OPC=retq                    
                                                                                                  
.size target, .-target
