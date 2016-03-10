  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm11, %ymm2                         #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label        
  callq .move_128_064_xmm2_r10_r11                #  4     0xf   5      OPC=callq_label        
  movq %xmm9, %rbx                                #  5     0x14  5      OPC=movq_r64_xmm       
  xchgw %r11w, %bx                                #  6     0x19  4      OPC=xchgw_r16_r16      
  retq                                            #  7     0x1d  1      OPC=retq               
                                                                                               
.size target, .-target
