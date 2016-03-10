  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vpbroadcastq %xmm11, %ymm3                      #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm  
  vmulsd %xmm10, %xmm3, %xmm1                     #  3     0xa   5      OPC=vmulsd_xmm_xmm_xmm    
  callq .move_byte_18_of_ymm1_to_r9b              #  4     0xf   5      OPC=callq_label           
  callq .move_r9b_to_byte_26_of_ymm1              #  5     0x14  5      OPC=callq_label           
  retq                                            #  6     0x19  1      OPC=retq                  
                                                                                                  
.size target, .-target
