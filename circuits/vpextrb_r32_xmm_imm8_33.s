  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  xorl %ebx, %ebx                   #  1     0     2      OPC=xorl_r32_r32       
  vpmovzxbq %xmm1, %ymm1            #  2     0x2   5      OPC=vpmovzxbq_ymm_xmm  
  callq .move_128_064_xmm1_r12_r13  #  3     0x7   5      OPC=callq_label        
  xaddb %bl, %r13b                  #  4     0xc   4      OPC=xaddb_r8_r8        
  retq                              #  5     0x10  1      OPC=retq               
                                                                                 
.size target, .-target
