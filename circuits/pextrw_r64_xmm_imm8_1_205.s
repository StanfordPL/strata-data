  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm9, %ymm2             #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_064_xmm2_r12_r13   #  3     0xa   5      OPC=callq_label        
  xorl %ebx, %ebx                    #  4     0xf   2      OPC=xorl_r32_r32       
  xorw %r13w, %bx                    #  5     0x11  4      OPC=xorw_r16_r16       
  retq                               #  6     0x15  1      OPC=retq               
                                                                                  
.size target, .-target
