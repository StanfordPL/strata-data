  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vpmovzxbq %xmm2, %ymm1              #  1     0     5      OPC=vpmovzxbq_ymm_xmm        
  callq .move_byte_14_of_ymm1_to_r8b  #  2     0x5   5      OPC=callq_label              
  callq .move_256_128_ymm1_xmm8_xmm9  #  3     0xa   5      OPC=callq_label              
  vhaddps %xmm9, %xmm8, %xmm9         #  4     0xf   5      OPC=vhaddps_xmm_xmm_xmm      
  callq .move_r8b_to_byte_19_of_ymm1  #  5     0x14  5      OPC=callq_label              
  vfmsub213ps %ymm9, %ymm1, %ymm1     #  6     0x19  5      OPC=vfmsub213ps_ymm_ymm_ymm  
  vfmadd132ps %xmm8, %xmm9, %xmm1     #  7     0x1e  5      OPC=vfmadd132ps_xmm_xmm_xmm  
  retq                                #  8     0x23  1      OPC=retq                     
                                                                                         
.size target, .-target
