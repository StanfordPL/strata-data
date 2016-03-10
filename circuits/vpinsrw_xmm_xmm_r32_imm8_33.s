  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vunpckhps %xmm7, %xmm2, %xmm1                 #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_016_008_bx_r8b_r9b                #  3     0x9   5      OPC=callq_label            
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  4     0xe   5      OPC=callq_label            
  callq .move_r8b_to_byte_2_of_ymm1             #  5     0x13  5      OPC=callq_label            
  movb %r9b, %r8b                               #  6     0x18  3      OPC=movb_r8_r8             
  callq .move_r8b_to_byte_3_of_ymm1             #  7     0x1b  5      OPC=callq_label            
  retq                                          #  8     0x20  1      OPC=retq                   
                                                                                                 
.size target, .-target
