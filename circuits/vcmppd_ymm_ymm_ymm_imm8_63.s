  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  vzeroall                            #  1     0     3      OPC=vzeroall              
  callq .move_byte_3_of_ymm1_to_r8b   #  2     0x3   5      OPC=callq_label           
  notb %r8b                           #  3     0x8   3      OPC=notb_r8               
  callq .move_r8b_to_byte_0_of_ymm1   #  4     0xb   5      OPC=callq_label           
  callq .move_256_128_ymm1_xmm8_xmm9  #  5     0x10  5      OPC=callq_label           
  vorps %ymm8, %ymm9, %ymm8           #  6     0x15  5      OPC=vorps_ymm_ymm_ymm     
  vpbroadcastb %xmm8, %ymm1           #  7     0x1a  5      OPC=vpbroadcastb_ymm_xmm  
  callq .move_r8b_to_byte_30_of_ymm1  #  8     0x1f  5      OPC=callq_label           
  retq                                #  9     0x24  1      OPC=retq                  
                                                                                      
.size target, .-target
