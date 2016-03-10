  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpunpckhqdq %xmm1, %xmm1, %xmm8  #  1     0     4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vpbroadcastd %xmm8, %xmm2        #  2     0x4   5      OPC=vpbroadcastd_xmm_xmm     
  vpmovzxdq %xmm2, %ymm11          #  3     0x9   5      OPC=vpmovzxdq_ymm_xmm        
  movd %xmm11, %ebx                #  4     0xe   5      OPC=movd_r32_xmm             
  retq                             #  5     0x13  1      OPC=retq                     
                                                                                      
.size target, .-target
