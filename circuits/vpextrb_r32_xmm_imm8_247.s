  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vpmovzxbq %xmm1, %xmm3                        #  1     0     5      OPC=vpmovzxbq_xmm_xmm  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label        
  callq .move_byte_7_of_ymm1_to_r9b             #  3     0xa   5      OPC=callq_label        
  movd %xmm6, %ebx                              #  4     0xf   4      OPC=movd_r32_xmm       
  xaddb %bl, %r9b                               #  5     0x13  4      OPC=xaddb_r8_r8        
  retq                                          #  6     0x17  1      OPC=retq               
                                                                                             
.size target, .-target
