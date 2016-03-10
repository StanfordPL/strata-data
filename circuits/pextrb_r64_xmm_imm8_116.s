  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vpmovzxbq %xmm5, %xmm7                        #  2     0x5   5      OPC=vpmovzxbq_xmm_xmm  
  xorq %rbx, %rbx                               #  3     0xa   3      OPC=xorq_r64_r64       
  movq %xmm7, %r9                               #  4     0xd   5      OPC=movq_r64_xmm       
  cmovpeq %r9, %rbx                             #  5     0x12  4      OPC=cmovpeq_r64_r64    
  retq                                          #  6     0x16  1      OPC=retq               
                                                                                             
.size target, .-target
