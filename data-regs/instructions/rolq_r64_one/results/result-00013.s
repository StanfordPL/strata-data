  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  callq .move_064_032_rbx_r10d_r11d  #  1     0     5      OPC=callq_label   
  callq .move_064_032_rbx_r8d_r9d    #  2     0x5   5      OPC=callq_label   
  callq .move_032_064_r8d_r9d_rbx    #  3     0xa   5      OPC=callq_label   
  sall $0x1, %r9d                    #  4     0xf   3      OPC=sall_r32_one  
  adcq %rbx, %rbx                    #  5     0x12  3      OPC=adcq_r64_r64  
  sall $0x1, %r11d                   #  6     0x15  3      OPC=sall_r32_one  
  retq                               #  7     0x18  1      OPC=retq          
                                                                             
.size target, .-target
