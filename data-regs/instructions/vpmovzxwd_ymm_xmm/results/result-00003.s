  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9   #  1     0     5      OPC=callq_label              
  vpmovzxwd %xmm9, %xmm6              #  2     0x5   5      OPC=vpmovzxwd_xmm_xmm        
  vpmovzxwd %xmm2, %xmm1              #  3     0xa   5      OPC=vpmovzxwd_xmm_xmm        
  callq .move_256_128_ymm1_xmm8_xmm9  #  4     0xf   5      OPC=callq_label              
  movups %xmm6, %xmm9                 #  5     0x14  4      OPC=movups_xmm_xmm           
  callq .move_128_256_xmm8_xmm9_ymm2  #  6     0x18  5      OPC=callq_label              
  vfmadd213pd %ymm2, %ymm6, %ymm1     #  7     0x1d  5      OPC=vfmadd213pd_ymm_ymm_ymm  
  retq                                #  8     0x22  1      OPC=retq                     
                                                                                         
.size target, .-target
