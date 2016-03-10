  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %xmm1            #  1     0     5      OPC=vpmovzxwq_xmm_xmm  
  callq .set_of                     #  2     0x5   5      OPC=callq_label        
  movq $0x2, %rbx                   #  3     0xa   10     OPC=movq_r64_imm64     
  callq .move_128_064_xmm1_r12_r13  #  4     0x14  5      OPC=callq_label        
  cmovol %r12d, %ebx                #  5     0x19  4      OPC=cmovol_r32_r32     
  retq                              #  6     0x1d  1      OPC=retq               
                                                                                 
.size target, .-target
