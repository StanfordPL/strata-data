  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode           
.target:                                        #        0     0      OPC=<label>      
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label  
  callq .move_032_064_r10d_r11d_rbx             #  2     0x5   5      OPC=callq_label  
  callq .move_032_016_ebx_r8w_r9w               #  3     0xa   5      OPC=callq_label  
  callq .move_016_032_r8w_r9w_ebx               #  4     0xf   5      OPC=callq_label  
  retq                                          #  5     0x14  1      OPC=retq         
                                                                                       
.size target, .-target
