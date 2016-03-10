  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm13, %xmm3              #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_128_064_xmm3_r10_r11     #  3     0xa   5      OPC=callq_label        
  xorl %ebx, %ebx                      #  4     0xf   2      OPC=xorl_r32_r32       
  addw %r11w, %bx                      #  5     0x11  4      OPC=addw_r16_r16       
  retq                                 #  6     0x15  1      OPC=retq               
                                                                                    
.size target, .-target
