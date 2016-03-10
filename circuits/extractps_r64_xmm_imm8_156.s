  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                 
.target:                          #        0    0      OPC=<label>            
  vpmovzxdq %xmm1, %ymm1          #  1     0    5      OPC=vpmovzxdq_ymm_xmm  
  callq .move_128_064_xmm1_r8_r9  #  2     0x5  5      OPC=callq_label        
  movl %r8d, %ebx                 #  3     0xa  3      OPC=movl_r32_r32       
  retq                            #  4     0xd  1      OPC=retq               
                                                                              
.size target, .-target
