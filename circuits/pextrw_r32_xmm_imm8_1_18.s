  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  vpmovzxwq %xmm5, %xmm3                        #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm   
  vminps %ymm3, %ymm3, %ymm10                   #  3     0xa   4      OPC=vminps_ymm_ymm_ymm  
  movd %xmm10, %ebx                             #  4     0xe   5      OPC=movd_r32_xmm        
  retq                                          #  5     0x13  1      OPC=retq                
                                                                                              
.size target, .-target
