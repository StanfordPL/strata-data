  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vpmovzxwd %xmm1, %xmm5            #  1     0     5      OPC=vpmovzxwd_xmm_xmm  
  vmovdqa %ymm5, %ymm1              #  2     0x5   4      OPC=vmovdqa_ymm_ymm    
  callq .move_128_064_xmm1_r12_r13  #  3     0x9   5      OPC=callq_label        
  movzwl %r13w, %ebx                #  4     0xe   4      OPC=movzwl_r32_r16     
  retq                              #  5     0x12  1      OPC=retq               
                                                                                 
.size target, .-target
