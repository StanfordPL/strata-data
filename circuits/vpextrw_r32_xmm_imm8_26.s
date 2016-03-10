  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm9, %ymm12                         #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm  
  xorq %rbx, %rbx                                 #  3     0xa   3      OPC=xorq_r64_r64       
  movq %xmm12, %rbp                               #  4     0xd   5      OPC=movq_r64_xmm       
  movw %bp, %bx                                   #  5     0x12  3      OPC=movw_r16_r16       
  retq                                            #  6     0x15  1      OPC=retq               
                                                                                               
.size target, .-target
