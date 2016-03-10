  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                      
.target:                              #        0     0      OPC=<label>                 
  callq .move_byte_3_of_rbx_to_r8b    #  1     0     5      OPC=callq_label             
  vpmovzxwq %xmm2, %ymm10             #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm       
  vcvtsi2sdl %ebx, %xmm2, %xmm1       #  3     0xa   4      OPC=vcvtsi2sdl_xmm_xmm_r32  
  por %xmm10, %xmm2                   #  4     0xe   5      OPC=por_xmm_xmm             
  callq .move_128_064_xmm2_r10_r11    #  5     0x13  5      OPC=callq_label             
  xchgw %r11w, %bx                    #  6     0x18  4      OPC=xchgw_r16_r16           
  callq .move_064_128_r10_r11_xmm1    #  7     0x1c  5      OPC=callq_label             
  callq .move_r8b_to_byte_11_of_ymm1  #  8     0x21  5      OPC=callq_label             
  callq .move_byte_2_of_rbx_to_r8b    #  9     0x26  5      OPC=callq_label             
  callq .move_r8b_to_byte_10_of_ymm1  #  10    0x2b  5      OPC=callq_label             
  retq                                #  11    0x30  1      OPC=retq                    
                                                                                        
.size target, .-target
