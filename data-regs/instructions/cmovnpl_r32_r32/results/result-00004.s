  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP  Bytes  Opcode               
.target:                            #        0    0      OPC=<label>          
  cmovpol %ecx, %ebx                #  1     0    3      OPC=cmovpol_r32_r32  
  callq .move_064_032_rbx_r8d_r9d   #  2     0x3  5      OPC=callq_label      
  callq .move_r9b_to_byte_6_of_rbx  #  3     0x8  5      OPC=callq_label      
  retq                              #  4     0xd  1      OPC=retq             
                                                                              
.size target, .-target
