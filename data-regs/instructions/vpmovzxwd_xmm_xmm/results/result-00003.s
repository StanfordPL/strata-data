  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vpmovzxwq %xmm5, %xmm1                        #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm        
  vpmovzxwq %xmm2, %xmm11                       #  3     0xa   5      OPC=vpmovzxwq_xmm_xmm        
  vhsubps %ymm1, %ymm11, %ymm8                  #  4     0xf   4      OPC=vhsubps_ymm_ymm_ymm      
  vfmadd132ps %ymm11, %ymm8, %ymm1              #  5     0x13  5      OPC=vfmadd132ps_ymm_ymm_ymm  
  retq                                          #  6     0x18  1      OPC=retq                     
                                                                                                   
.size target, .-target
