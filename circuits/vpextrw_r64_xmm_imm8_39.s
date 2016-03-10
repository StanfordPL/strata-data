  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm7, %ymm1                        #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_064_xmm1_r10_r11              #  3     0xa   5      OPC=callq_label        
  movzwq %r11w, %rbx                            #  4     0xf   4      OPC=movzwq_r64_r16     
  retq                                          #  5     0x13  1      OPC=retq               
                                                                                             
.size target, .-target
