  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode           
.target:                                        #        0     0      OPC=<label>      
  callq .move_byte_15_of_ymm1_to_r9b            #  1     0     5      OPC=callq_label  
  callq .move_r9b_to_byte_11_of_ymm1            #  2     0x5   5      OPC=callq_label  
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0xa   5      OPC=callq_label  
  callq .move_032_064_r10d_r11d_rbx             #  4     0xf   5      OPC=callq_label  
  retq                                          #  5     0x14  1      OPC=retq         
                                                                                       
.size target, .-target
