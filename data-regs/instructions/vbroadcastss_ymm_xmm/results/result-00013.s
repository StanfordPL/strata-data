  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r8_r9      #  1     0     5      OPC=callq_label           
  vzeroall                            #  2     0x5   3      OPC=vzeroall              
  callq .move_064_128_r8_r9_xmm3      #  3     0x8   5      OPC=callq_label           
  vsubpd %ymm2, %ymm3, %ymm1          #  4     0xd   4      OPC=vsubpd_ymm_ymm_ymm    
  callq .move_r8b_to_byte_16_of_ymm1  #  5     0x11  5      OPC=callq_label           
  vpbroadcastd %xmm1, %ymm1           #  6     0x16  5      OPC=vpbroadcastd_ymm_xmm  
  retq                                #  7     0x1b  1      OPC=retq                  
                                                                                      
.size target, .-target
