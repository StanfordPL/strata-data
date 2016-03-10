  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm8_xmm9   #  1     0     5      OPC=callq_label            
  pmovzxbd %xmm9, %xmm1               #  2     0x5   6      OPC=pmovzxbd_xmm_xmm       
  callq .move_byte_12_of_ymm1_to_r8b  #  3     0xb   5      OPC=callq_label            
  vunpcklps %xmm2, %xmm9, %xmm9       #  4     0x10  4      OPC=vunpcklps_xmm_xmm_xmm  
  movshdup %xmm2, %xmm1               #  5     0x14  4      OPC=movshdup_xmm_xmm       
  callq .move_r8b_to_byte_3_of_ymm1   #  6     0x18  5      OPC=callq_label            
  callq .move_r8b_to_byte_6_of_ymm1   #  7     0x1d  5      OPC=callq_label            
  movsd %xmm9, %xmm1                  #  8     0x22  5      OPC=movsd_xmm_xmm          
  retq                                #  9     0x27  1      OPC=retq                   
                                                                                       
.size target, .-target
