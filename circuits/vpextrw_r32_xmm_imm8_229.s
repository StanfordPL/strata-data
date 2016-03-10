  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label        
  movsldup %xmm9, %xmm8              #  2     0x5   5      OPC=movsldup_xmm_xmm   
  vpmovzxwq %xmm8, %ymm2             #  3     0xa   5      OPC=vpmovzxwq_ymm_xmm  
  xorl %ebx, %ebx                    #  4     0xf   2      OPC=xorl_r32_r32       
  callq .move_128_064_xmm2_r8_r9     #  5     0x11  5      OPC=callq_label        
  cmovlew %r9w, %bx                  #  6     0x16  5      OPC=cmovlew_r16_r16    
  retq                               #  7     0x1b  1      OPC=retq               
                                                                                  
.size target, .-target
