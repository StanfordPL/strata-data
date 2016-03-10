  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label           
  movsbw %r10b, %r9w                            #  2     0x5   5      OPC=movsbw_r16_r8         
  vzeroall                                      #  3     0xa   3      OPC=vzeroall              
  callq .move_r9b_to_byte_17_of_ymm1            #  4     0xd   5      OPC=callq_label           
  callq .move_r9b_to_byte_11_of_ymm1            #  5     0x12  5      OPC=callq_label           
  callq .move_r9b_to_byte_16_of_ymm1            #  6     0x17  5      OPC=callq_label           
  callq .move_256_128_ymm1_xmm10_xmm11          #  7     0x1c  5      OPC=callq_label           
  vpbroadcastw %xmm11, %ymm1                    #  8     0x21  5      OPC=vpbroadcastw_ymm_xmm  
  retq                                          #  9     0x26  1      OPC=retq                  
                                                                                                
.size target, .-target
