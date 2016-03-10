  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm9, %ymm2                          #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_064_xmm2_r10_r11                #  3     0xa   5      OPC=callq_label        
  movq $0x80, %rbx                                #  4     0xf   10     OPC=movq_r64_imm64     
  xchgq %r10, %rbx                                #  5     0x19  3      OPC=xchgq_r64_r64      
  retq                                            #  6     0x1c  1      OPC=retq               
                                                                                               
.size target, .-target
