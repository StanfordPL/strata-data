  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r8_r9      #  1     0     5      OPC=callq_label           
  notb %r9b                           #  2     0x5   3      OPC=notb_r8               
  callq .move_064_128_r8_r9_xmm1      #  3     0x8   5      OPC=callq_label           
  vbroadcastss %xmm1, %ymm1           #  4     0xd   5      OPC=vbroadcastss_ymm_xmm  
  callq .move_r8b_to_byte_2_of_ymm1   #  5     0x12  5      OPC=callq_label           
  callq .move_byte_17_of_ymm1_to_r9b  #  6     0x17  5      OPC=callq_label           
  callq .move_r9b_to_byte_3_of_ymm1   #  7     0x1c  5      OPC=callq_label           
  vpbroadcastd %xmm1, %ymm1           #  8     0x21  5      OPC=vpbroadcastd_ymm_xmm  
  retq                                #  9     0x26  1      OPC=retq                  
                                                                                      
.size target, .-target
