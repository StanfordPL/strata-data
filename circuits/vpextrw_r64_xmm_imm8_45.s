  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label        
  callq .clear_pf                      #  2     0x5   5      OPC=callq_label        
  vpmovzxwq %xmm13, %xmm2              #  3     0xa   5      OPC=vpmovzxwq_xmm_xmm  
  callq .read_pf_into_rbx              #  4     0xf   5      OPC=callq_label        
  callq .move_128_064_xmm2_r10_r11     #  5     0x14  5      OPC=callq_label        
  xchgw %bx, %r11w                     #  6     0x19  4      OPC=xchgw_r16_r16      
  retq                                 #  7     0x1d  1      OPC=retq               
                                                                                    
.size target, .-target
