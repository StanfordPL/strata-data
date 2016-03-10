  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                 
.target:                          #        0    0      OPC=<label>            
  vpmovzxwq %xmm1, %ymm1          #  1     0    5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_064_xmm1_r8_r9  #  2     0x5  5      OPC=callq_label        
  movzwl %r9w, %ebx               #  3     0xa  4      OPC=movzwl_r32_r16     
  retq                            #  4     0xe  1      OPC=retq               
                                                                              
.size target, .-target
