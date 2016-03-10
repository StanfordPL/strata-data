  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode           
.target:                                #        0     0      OPC=<label>      
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label  
  callq .move_64_128_xmm10_xmm11_xmm2   #  2     0x5   5      OPC=callq_label  
  callq .move_128_064_xmm2_r8_r9        #  3     0xa   5      OPC=callq_label  
  vzeroall                              #  4     0xf   3      OPC=vzeroall     
  callq .move_r9b_to_byte_31_of_ymm1    #  5     0x12  5      OPC=callq_label  
  callq .move_r8b_to_byte_15_of_ymm1    #  6     0x17  5      OPC=callq_label  
  retq                                  #  7     0x1c  1      OPC=retq         
                                                                               
.size target, .-target
