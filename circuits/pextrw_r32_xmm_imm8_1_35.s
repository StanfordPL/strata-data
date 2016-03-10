  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vpmovzxwq %xmm1, %ymm2              #  1     0     5      OPC=vpmovzxwq_ymm_xmm   
  callq .move_256_128_ymm2_xmm8_xmm9  #  2     0x5   5      OPC=callq_label         
  vminsd %xmm2, %xmm9, %xmm1          #  3     0xa   4      OPC=vminsd_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r8_r9      #  4     0xe   5      OPC=callq_label         
  movl %r9d, %ebx                     #  5     0x13  3      OPC=movl_r32_r32        
  retq                                #  6     0x16  1      OPC=retq                
                                                                                    
.size target, .-target
