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
  callq .move_128_064_xmm2_r8_r9                  #  3     0xa   5      OPC=callq_label        
  xorq %rbx, %rbx                                 #  4     0xf   3      OPC=xorq_r64_r64       
  cmovnsw %r9w, %bx                               #  5     0x12  5      OPC=cmovnsw_r16_r16    
  retq                                            #  6     0x17  1      OPC=retq               
                                                                                               
.size target, .-target
