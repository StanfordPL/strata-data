  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                   
.target:                                #        0     0      OPC=<label>              
  pmovzxbq %xmm2, %xmm12                #  1     0     6      OPC=pmovzxbq_xmm_xmm     
  vpmovzxbq %xmm2, %ymm4                #  2     0x6   5      OPC=vpmovzxbq_ymm_xmm    
  vmovupd %ymm4, %ymm1                  #  3     0xb   4      OPC=vmovupd_ymm_ymm      
  callq .move_256_128_ymm1_xmm10_xmm11  #  4     0xf   5      OPC=callq_label          
  vhaddps %xmm11, %xmm12, %xmm1         #  5     0x14  5      OPC=vhaddps_xmm_xmm_xmm  
  retq                                  #  6     0x19  1      OPC=retq                 
                                                                                       
.size target, .-target
