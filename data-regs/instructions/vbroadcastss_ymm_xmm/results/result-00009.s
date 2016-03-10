  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP  Bytes  Opcode                    
.target:                              #        0    0      OPC=<label>               
  callq .move_128_064_xmm2_r8_r9      #  1     0    5      OPC=callq_label           
  vpbroadcastd %xmm2, %ymm1           #  2     0x5  5      OPC=vpbroadcastd_ymm_xmm  
  callq .move_r8b_to_byte_24_of_ymm1  #  3     0xa  5      OPC=callq_label           
  retq                                #  4     0xf  1      OPC=retq                  
                                                                                     
.size target, .-target
