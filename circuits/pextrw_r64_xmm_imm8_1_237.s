  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm11, %xmm1              #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_128_064_xmm1_r10_r11     #  3     0xa   5      OPC=callq_label        
  orl %r11d, %r11d                     #  4     0xf   3      OPC=orl_r32_r32        
  callq .read_of_into_rbx              #  5     0x12  5      OPC=callq_label        
  movw %r11w, %bx                      #  6     0x17  4      OPC=movw_r16_r16       
  retq                                 #  7     0x1b  1      OPC=retq               
                                                                                    
.size target, .-target
