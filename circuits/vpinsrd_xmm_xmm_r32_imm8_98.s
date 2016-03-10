  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  sqrtpd %xmm2, %xmm9                 #  1     0     5      OPC=sqrtpd_xmm_xmm         
  vpmovzxwd %xmm9, %ymm13             #  2     0x5   5      OPC=vpmovzxwd_ymm_xmm      
  vunpcklpd %xmm13, %xmm2, %xmm1      #  3     0xa   5      OPC=vunpcklpd_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r10_r11    #  4     0xf   5      OPC=callq_label            
  callq .move_byte_2_of_rbx_to_r8b    #  5     0x14  5      OPC=callq_label            
  xaddw %r11w, %bx                    #  6     0x19  5      OPC=xaddw_r16_r16          
  callq .move_064_128_r10_r11_xmm1    #  7     0x1e  5      OPC=callq_label            
  callq .move_r8b_to_byte_10_of_ymm1  #  8     0x23  5      OPC=callq_label            
  callq .move_byte_3_of_rbx_to_r8b    #  9     0x28  5      OPC=callq_label            
  callq .move_r8b_to_byte_11_of_ymm1  #  10    0x2d  5      OPC=callq_label            
  retq                                #  11    0x32  1      OPC=retq                   
                                                                                       
.size target, .-target
