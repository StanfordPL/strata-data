  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  callq .move_032_016_ecx_r8w_r9w    #  1     0     5      OPC=callq_label      
  callq .move_032_016_ebx_r10w_r11w  #  2     0x5   5      OPC=callq_label      
  movsbq %bl, %rbx                   #  3     0xa   4      OPC=movsbq_r64_r8    
  callq .move_r9b_to_byte_5_of_rbx   #  4     0xe   5      OPC=callq_label      
  popcntq %rbx, %rcx                 #  5     0x13  5      OPC=popcntq_r64_r64  
  callq .move_016_032_r8w_r9w_ebx    #  6     0x18  5      OPC=callq_label      
  callq .move_016_032_r10w_r11w_ecx  #  7     0x1d  5      OPC=callq_label      
  retq                               #  8     0x22  1      OPC=retq             
                                                                                
.size target, .-target
