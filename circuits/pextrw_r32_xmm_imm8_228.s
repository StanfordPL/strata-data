  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  callq .move_byte_6_of_ymm1_to_r8b  #  1     0     5      OPC=callq_label             
  callq .move_r8b_to_byte_7_of_ymm1  #  2     0x5   5      OPC=callq_label             
  vpmovzxbd %xmm1, %xmm9             #  3     0xa   5      OPC=vpmovzxbd_xmm_xmm       
  vpunpckhdq %ymm9, %ymm9, %ymm11    #  4     0xf   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  callq .move_128_064_xmm1_r8_r9     #  5     0x14  5      OPC=callq_label             
  movd %xmm11, %ebx                  #  6     0x19  5      OPC=movd_r32_xmm            
  xchgw %r9w, %r8w                   #  7     0x1e  4      OPC=xchgw_r16_r16           
  callq .move_016_032_r8w_r9w_edx    #  8     0x22  5      OPC=callq_label             
  xchgw %bx, %dx                     #  9     0x27  3      OPC=xchgw_r16_r16           
  retq                               #  10    0x2a  1      OPC=retq                    
                                                                                       
.size target, .-target
