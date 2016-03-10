  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r8_r9      #  1     0     5      OPC=callq_label      
  shlb $0x1, %r8b                     #  2     0x5   3      OPC=shlb_r8_one      
  callq .move_064_128_r8_r9_xmm1      #  3     0x8   5      OPC=callq_label      
  callq .move_byte_1_of_ymm1_to_r9b   #  4     0xd   5      OPC=callq_label      
  vmovapd %xmm2, %xmm1                #  5     0x12  4      OPC=vmovapd_xmm_xmm  
  callq .move_r9b_to_byte_9_of_ymm1   #  6     0x16  5      OPC=callq_label      
  callq .move_r9b_to_byte_14_of_ymm1  #  7     0x1b  5      OPC=callq_label      
  callq .move_r8b_to_byte_10_of_ymm1  #  8     0x20  5      OPC=callq_label      
  callq .move_r9b_to_byte_11_of_ymm1  #  9     0x25  5      OPC=callq_label      
  movlhps %xmm1, %xmm1                #  10    0x2a  3      OPC=movlhps_xmm_xmm  
  retq                                #  11    0x2d  1      OPC=retq             
                                                                                 
.size target, .-target
