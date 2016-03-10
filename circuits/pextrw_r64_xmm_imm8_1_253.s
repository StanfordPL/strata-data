  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  callq .move_byte_10_of_ymm1_to_r8b            #  1     0     5      OPC=callq_label     
  callq .move_byte_11_of_ymm1_to_r9b            #  2     0x5   5      OPC=callq_label     
  callq .move_r9b_to_byte_9_of_ymm1             #  3     0xa   5      OPC=callq_label     
  callq .move_r9b_to_byte_11_of_ymm1            #  4     0xf   5      OPC=callq_label     
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  5     0x14  5      OPC=callq_label     
  movzwl %r12w, %ebx                            #  6     0x19  4      OPC=movzwl_r32_r16  
  callq .move_008_016_r8b_r9b_bx                #  7     0x1d  5      OPC=callq_label     
  retq                                          #  8     0x22  1      OPC=retq            
                                                                                          
.size target, .-target
