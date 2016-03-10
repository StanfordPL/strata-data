  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %xmm5            #  1     0     5      OPC=vpmovzxwq_xmm_xmm  
  vmovups %ymm5, %ymm2              #  2     0x5   4      OPC=vmovups_ymm_ymm    
  callq .move_128_064_xmm2_r12_r13  #  3     0x9   5      OPC=callq_label        
  movzwq %r13w, %rbx                #  4     0xe   4      OPC=movzwq_r64_r16     
  retq                              #  5     0x12  1      OPC=retq               
                                                                                 
.size target, .-target
