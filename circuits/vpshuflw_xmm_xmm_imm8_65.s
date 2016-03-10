  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  callq .move_128_064_xmm2_r8_r9     #  1     0     5      OPC=callq_label             
  vpbroadcastq %xmm2, %ymm15         #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm    
  vpmovzxwq %xmm15, %xmm13           #  3     0xa   5      OPC=vpmovzxwq_xmm_xmm       
  vpunpckhdq %ymm15, %ymm13, %ymm4   #  4     0xf   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vmovsd %xmm4, %xmm2, %xmm1         #  5     0x14  4      OPC=vmovsd_xmm_xmm_xmm      
  callq .move_byte_5_of_ymm1_to_r9b  #  6     0x18  5      OPC=callq_label             
  callq .move_r9b_to_byte_3_of_ymm1  #  7     0x1d  5      OPC=callq_label             
  callq .move_r8b_to_byte_2_of_ymm1  #  8     0x22  5      OPC=callq_label             
  retq                               #  9     0x27  1      OPC=retq                    
                                                                                       
.size target, .-target
