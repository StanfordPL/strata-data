  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode             
.target:                           #        0     0      OPC=<label>        
  callq .move_128_064_xmm1_r8_r9   #  1     0     5      OPC=callq_label    
  callq .move_032_064_r8d_r9d_rcx  #  2     0x5   5      OPC=callq_label    
  callq .move_032_016_ecx_r8w_r9w  #  3     0xa   5      OPC=callq_label    
  movsbl %r8b, %ebx                #  4     0xf   4      OPC=movsbl_r32_r8  
  callq .move_016_032_r8w_r9w_ebx  #  5     0x13  5      OPC=callq_label    
  retq                             #  6     0x18  1      OPC=retq           
                                                                            
.size target, .-target
