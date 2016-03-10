  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vpmovzxbq %xmm1, %xmm13           #  1     0     5      OPC=vpmovzxbq_xmm_xmm  
  vmovdqu %ymm13, %ymm1             #  2     0x5   5      OPC=vmovdqu_ymm_ymm    
  callq .move_128_064_xmm1_r12_r13  #  3     0xa   5      OPC=callq_label        
  movzbl %r13b, %ebx                #  4     0xf   4      OPC=movzbl_r32_r8      
  retq                              #  5     0x13  1      OPC=retq               
                                                                                 
.size target, .-target
