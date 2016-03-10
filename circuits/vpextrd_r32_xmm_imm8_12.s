  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vbroadcastss %xmm1, %ymm8   #  1     0     5      OPC=vbroadcastss_ymm_xmm  
  vmaxpd %xmm1, %xmm8, %xmm6  #  2     0x5   4      OPC=vmaxpd_xmm_xmm_xmm    
  vpmovzxdq %xmm6, %ymm13     #  3     0x9   5      OPC=vpmovzxdq_ymm_xmm     
  movd %xmm13, %ebx           #  4     0xe   5      OPC=movd_r32_xmm          
  retq                        #  5     0x13  1      OPC=retq                  
                                                                              
.size target, .-target
