  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm6, %ymm8                        #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm  
  movd %xmm8, %r9d                              #  3     0xa   5      OPC=movd_r32_xmm       
  movd %r9d, %xmm1                              #  4     0xf   5      OPC=movd_xmm_r32       
  callq .move_r9b_to_byte_0_of_ymm1             #  5     0x14  5      OPC=callq_label        
  vmovq %xmm1, %rbx                             #  6     0x19  5      OPC=vmovq_r64_xmm      
  retq                                          #  7     0x1e  1      OPC=retq               
                                                                                             
.size target, .-target
