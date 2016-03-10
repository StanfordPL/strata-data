  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  vpmovzxwq %xmm1, %ymm2                        #  1     0     5      OPC=vpmovzxwq_ymm_xmm        
  vpunpckhqdq %ymm2, %ymm2, %ymm1               #  2     0x5   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0x9   5      OPC=callq_label              
  movl %r12d, %ebx                              #  4     0xe   3      OPC=movl_r32_r32             
  retq                                          #  5     0x11  1      OPC=retq                     
                                                                                                   
.size target, .-target
