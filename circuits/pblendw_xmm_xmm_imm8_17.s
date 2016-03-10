  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode           
.target:                             #        0     0      OPC=<label>      
  callq .move_128_064_xmm1_r12_r13   #  1     0     5      OPC=callq_label  
  callq .move_128_064_xmm2_r8_r9     #  2     0x5   5      OPC=callq_label  
  callq .move_016_032_r8w_r9w_edx    #  3     0xa   5      OPC=callq_label  
  callq .move_032_016_edx_r12w_r13w  #  4     0xf   5      OPC=callq_label  
  callq .move_064_128_r12_r13_xmm1   #  5     0x14  5      OPC=callq_label  
  retq                               #  6     0x19  1      OPC=retq         
                                                                            
.size target, .-target
