  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode           
.target:                                #        0     0      OPC=<label>      
  callq .move_128_064_xmm2_r12_r13      #  1     0     5      OPC=callq_label  
  incb %bh                              #  2     0x5   2      OPC=incb_rh      
  vzeroall                              #  3     0x7   3      OPC=vzeroall     
  callq .move_128_256_xmm10_xmm11_ymm1  #  4     0xa   5      OPC=callq_label  
  callq .move_064_128_r12_r13_xmm1      #  5     0xf   5      OPC=callq_label  
  callq .move_032_016_ebx_r8w_r9w       #  6     0x14  5      OPC=callq_label  
  callq .move_r8b_to_byte_7_of_ymm1     #  7     0x19  5      OPC=callq_label  
  retq                                  #  8     0x1e  1      OPC=retq         
                                                                               
.size target, .-target
