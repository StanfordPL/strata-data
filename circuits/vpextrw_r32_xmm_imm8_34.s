  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                 
.target:                                #        0     0      OPC=<label>            
  vmovshdup %xmm1, %xmm3                #  1     0     4      OPC=vmovshdup_xmm_xmm  
  callq .move_256_128_ymm3_xmm10_xmm11  #  2     0x4   5      OPC=callq_label        
  vpmovzxwq %xmm10, %xmm11              #  3     0x9   5      OPC=vpmovzxwq_xmm_xmm  
  movq %xmm11, %rbx                     #  4     0xe   5      OPC=movq_r64_xmm       
  retq                                  #  5     0x13  1      OPC=retq               
                                                                                     
.size target, .-target
