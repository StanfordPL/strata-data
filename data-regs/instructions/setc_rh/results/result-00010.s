  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .read_cf_into_rbx           #  1     0     5      OPC=callq_label     
  callq .move_064_032_rbx_r8d_r9d   #  2     0x5   5      OPC=callq_label     
  callq .move_r8b_to_byte_2_of_rbx  #  3     0xa   5      OPC=callq_label     
  callq .move_r8b_to_byte_5_of_rbx  #  4     0xf   5      OPC=callq_label     
  callq .move_064_032_rbx_r8d_r9d   #  5     0x14  5      OPC=callq_label     
  movslq %r9d, %rax                 #  6     0x19  3      OPC=movslq_r64_r32  
  retq                              #  7     0x1c  1      OPC=retq            
                                                                              
.size target, .-target
