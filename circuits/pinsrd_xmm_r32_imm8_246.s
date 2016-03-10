  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  movd %ebx, %xmm7                   #  1     0     4      OPC=movd_xmm_r32   
  callq .move_128_64_xmm1_xmm8_xmm9  #  2     0x4   5      OPC=callq_label    
  movss %xmm7, %xmm9                 #  3     0x9   5      OPC=movss_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1  #  4     0xe   5      OPC=callq_label    
  retq                               #  5     0x13  1      OPC=retq           
                                                                              
.size target, .-target
