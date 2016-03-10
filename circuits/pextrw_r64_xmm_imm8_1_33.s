  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %ymm3                          #  1     0     5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label        
  callq .move_64_128_xmm10_xmm11_xmm1             #  3     0xa   5      OPC=callq_label        
  callq .move_128_064_xmm1_r12_r13                #  4     0xf   5      OPC=callq_label        
  movw %r12w, %r13w                               #  5     0x14  4      OPC=movw_r16_r16       
  movzwq %r13w, %rbx                              #  6     0x18  4      OPC=movzwq_r64_r16     
  retq                                            #  7     0x1c  1      OPC=retq               
                                                                                               
.size target, .-target
