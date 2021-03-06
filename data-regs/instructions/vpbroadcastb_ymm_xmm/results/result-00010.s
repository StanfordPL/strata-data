  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r8_r9                  #  1     0     5      OPC=callq_label           
  vzeroall                                        #  2     0x5   3      OPC=vzeroall              
  callq .move_r8b_to_byte_12_of_ymm1              #  3     0x8   5      OPC=callq_label           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  4     0xd   5      OPC=callq_label           
  vpbroadcastb %xmm11, %xmm9                      #  5     0x12  5      OPC=vpbroadcastb_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1              #  6     0x17  5      OPC=callq_label           
  pxor %xmm9, %xmm1                               #  7     0x1c  5      OPC=pxor_xmm_xmm          
  retq                                            #  8     0x21  1      OPC=retq                  
                                                                                                  
.size target, .-target
