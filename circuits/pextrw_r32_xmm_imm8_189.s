  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  vpbroadcastw %xmm1, %ymm7           #  1     0     5      OPC=vpbroadcastw_ymm_xmm  
  movq %xmm7, %r9                     #  2     0x5   5      OPC=movq_r64_xmm          
  callq .move_r9b_to_byte_8_of_ymm1   #  3     0xa   5      OPC=callq_label           
  xorq %rbx, %rbx                     #  4     0xf   3      OPC=xorq_r64_r64          
  callq .move_byte_11_of_ymm1_to_r9b  #  5     0x12  5      OPC=callq_label           
  callq .move_byte_10_of_ymm1_to_r8b  #  6     0x17  5      OPC=callq_label           
  callq .move_008_016_r8b_r9b_bx      #  7     0x1c  5      OPC=callq_label           
  retq                                #  8     0x21  1      OPC=retq                  
                                                                                      
.size target, .-target
