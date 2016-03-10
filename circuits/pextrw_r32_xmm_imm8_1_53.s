  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label        
  cvtss2sil %xmm12, %ebx               #  2     0x5   5      OPC=cvtss2sil_r32_xmm  
  callq .move_064_032_rbx_r10d_r11d    #  3     0xa   5      OPC=callq_label        
  vpmovzxwq %xmm13, %xmm3              #  4     0xf   5      OPC=vpmovzxwq_xmm_xmm  
  blsrl %r11d, %ebx                    #  5     0x14  5      OPC=blsrl_r32_r32      
  callq .move_128_064_xmm3_r10_r11     #  6     0x19  5      OPC=callq_label        
  addw %r11w, %bx                      #  7     0x1e  4      OPC=addw_r16_r16       
  retq                                 #  8     0x22  1      OPC=retq               
                                                                                    
.size target, .-target
