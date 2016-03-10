  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm11, %ymm3                         #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm  
  xorq %rbx, %rbx                                 #  3     0xa   3      OPC=xorq_r64_r64       
  callq .move_128_064_xmm3_r12_r13                #  4     0xd   5      OPC=callq_label        
  xorl %r13d, %ebx                                #  5     0x12  3      OPC=xorl_r32_r32       
  retq                                            #  6     0x15  1      OPC=retq               
                                                                                               
.size target, .-target
