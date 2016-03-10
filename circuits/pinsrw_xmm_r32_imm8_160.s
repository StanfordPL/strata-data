  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode             
.target:                           #        0     0      OPC=<label>        
  callq .move_128_064_xmm1_r8_r9   #  1     0     5      OPC=callq_label    
  callq .move_032_016_ebx_r8w_r9w  #  2     0x5   5      OPC=callq_label    
  callq .move_064_128_r8_r9_xmm3   #  3     0xa   5      OPC=callq_label    
  movss %xmm3, %xmm1               #  4     0xf   4      OPC=movss_xmm_xmm  
  retq                             #  5     0x13  1      OPC=retq           
                                                                            
.size target, .-target
