  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode             
.target:                              #        0     0      OPC=<label>        
  callq .move_128_064_xmm1_r8_r9      #  1     0     5      OPC=callq_label    
  callq .move_128_064_xmm2_r10_r11    #  2     0x5   5      OPC=callq_label    
  movw %r8w, %r10w                    #  3     0xa   4      OPC=movw_r16_r16   
  callq .move_byte_14_of_ymm1_to_r8b  #  4     0xe   5      OPC=callq_label    
  xchgw %r9w, %r11w                   #  5     0x13  4      OPC=xchgw_r16_r16  
  callq .move_byte_15_of_ymm1_to_r9b  #  6     0x17  5      OPC=callq_label    
  callq .move_064_128_r10_r11_xmm1    #  7     0x1c  5      OPC=callq_label    
  callq .move_r9b_to_byte_15_of_ymm1  #  8     0x21  5      OPC=callq_label    
  callq .move_r8b_to_byte_14_of_ymm1  #  9     0x26  5      OPC=callq_label    
  retq                                #  10    0x2b  1      OPC=retq           
                                                                               
.size target, .-target
