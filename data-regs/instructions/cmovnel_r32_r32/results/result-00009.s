  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP  Bytes  Opcode               
.target:                            #        0    0      OPC=<label>          
  callq .move_064_032_rbx_r8d_r9d   #  1     0    5      OPC=callq_label      
  callq .move_r9b_to_byte_7_of_rbx  #  2     0x5  5      OPC=callq_label      
  cmovnzl %ecx, %ebx                #  3     0xa  3      OPC=cmovnzl_r32_r32  
  retq                              #  4     0xd  1      OPC=retq             
                                                                              
.size target, .-target
