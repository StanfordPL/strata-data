  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vmovshdup %xmm1, %xmm0            #  1     0     4      OPC=vmovshdup_xmm_xmm  
  vpmovzxwq %xmm0, %xmm3            #  2     0x4   5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_128_064_xmm3_r12_r13  #  3     0x9   5      OPC=callq_label        
  movzbq %r13b, %rbx                #  4     0xe   4      OPC=movzbq_r64_r8      
  xaddl %ebx, %r13d                 #  5     0x12  4      OPC=xaddl_r32_r32      
  retq                              #  6     0x16  1      OPC=retq               
                                                                                 
.size target, .-target
