  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  vpmovzxdq %xmm1, %ymm4          #  1     0     5      OPC=vpmovzxdq_ymm_xmm  
  vmovups %xmm4, %xmm14           #  2     0x5   4      OPC=vmovups_xmm_xmm    
  movddup %xmm14, %xmm1           #  3     0x9   5      OPC=movddup_xmm_xmm    
  callq .move_128_064_xmm1_r8_r9  #  4     0xe   5      OPC=callq_label        
  movl %r9d, %ebx                 #  5     0x13  3      OPC=movl_r32_r32       
  retq                            #  6     0x16  1      OPC=retq               
                                                                               
.size target, .-target
