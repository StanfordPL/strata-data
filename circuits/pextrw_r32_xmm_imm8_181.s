  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  xorq %rbx, %rbx                      #  1     0     3      OPC=xorq_r64_r64       
  callq .move_128_64_xmm1_xmm10_xmm11  #  2     0x3   5      OPC=callq_label        
  vpmovzxwq %xmm11, %ymm3              #  3     0x8   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_064_xmm3_r12_r13     #  4     0xd   5      OPC=callq_label        
  movw %r13w, %bx                      #  5     0x12  4      OPC=movw_r16_r16       
  retq                                 #  6     0x16  1      OPC=retq               
                                                                                    
.size target, .-target
