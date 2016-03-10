  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                   
.target:                                #        0     0      OPC=<label>              
  vpmovzxbq %xmm2, %ymm13               #  1     0     5      OPC=vpmovzxbq_ymm_xmm    
  vhsubps %ymm13, %ymm13, %ymm1         #  2     0x5   5      OPC=vhsubps_ymm_ymm_ymm  
  callq .move_256_128_ymm1_xmm10_xmm11  #  3     0xa   5      OPC=callq_label          
  movsd %xmm1, %xmm11                   #  4     0xf   5      OPC=movsd_xmm_xmm        
  callq .move_128_64_xmm1_xmm8_xmm9     #  5     0x14  5      OPC=callq_label          
  vmaxpd %xmm11, %xmm8, %xmm1           #  6     0x19  5      OPC=vmaxpd_xmm_xmm_xmm   
  retq                                  #  7     0x1e  1      OPC=retq                 
                                                                                       
.size target, .-target
