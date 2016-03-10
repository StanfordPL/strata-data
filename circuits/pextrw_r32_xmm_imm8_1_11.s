  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm5, %ymm3                        #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_064_xmm3_r12_r13              #  3     0xa   5      OPC=callq_label        
  callq .move_032_064_r12d_r13d_rbx             #  4     0xf   5      OPC=callq_label        
  xchgl %ebx, %r13d                             #  5     0x14  3      OPC=xchgl_r32_r32      
  retq                                          #  6     0x17  1      OPC=retq               
                                                                                             
.size target, .-target
