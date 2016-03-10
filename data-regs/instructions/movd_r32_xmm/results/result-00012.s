  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode           
.target:                                        #        0     0      OPC=<label>      
  callq .move_byte_8_of_ymm1_to_r9b             #  1     0     5      OPC=callq_label  
  callq .move_r9b_to_byte_5_of_ymm1             #  2     0x5   5      OPC=callq_label  
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0xa   5      OPC=callq_label  
  callq .move_032_064_r10d_r11d_rbx             #  4     0xf   5      OPC=callq_label  
  callq .move_032_016_ebx_r12w_r13w             #  5     0x14  5      OPC=callq_label  
  callq .move_016_032_r12w_r13w_ebx             #  6     0x19  5      OPC=callq_label  
  retq                                          #  7     0x1e  1      OPC=retq         
                                                                                       
.size target, .-target
