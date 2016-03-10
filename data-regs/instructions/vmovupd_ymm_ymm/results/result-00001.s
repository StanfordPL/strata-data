  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r10_r11    #  1     0     5      OPC=callq_label         
  vminpd %ymm2, %ymm2, %ymm1          #  2     0x5   4      OPC=vminpd_ymm_ymm_ymm  
  callq .move_064_128_r10_r11_xmm1    #  3     0x9   5      OPC=callq_label         
  callq .move_byte_24_of_ymm1_to_r8b  #  4     0xe   5      OPC=callq_label         
  callq .move_r8b_to_byte_24_of_ymm1  #  5     0x13  5      OPC=callq_label         
  retq                                #  6     0x18  1      OPC=retq                
                                                                                    
.size target, .-target
