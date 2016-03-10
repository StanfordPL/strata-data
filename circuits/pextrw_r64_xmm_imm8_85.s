  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpmovzxwd %xmm10, %ymm5                         #  2     0x5   5      OPC=vpmovzxwd_ymm_xmm       
  vpunpckldq %xmm9, %xmm5, %xmm1                  #  3     0xa   5      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r8_r9                  #  4     0xf   5      OPC=callq_label             
  movzwq %r9w, %rbx                               #  5     0x14  4      OPC=movzwq_r64_r16          
  retq                                            #  6     0x18  1      OPC=retq                    
                                                                                                    
.size target, .-target
