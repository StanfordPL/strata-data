  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  sets %dl                          #  1     0     3      OPC=sets_r8          
  negb %dl                          #  2     0x3   2      OPC=negb_r8          
  cmovnzl %ecx, %ebx                #  3     0x5   3      OPC=cmovnzl_r32_r32  
  xorl %r9d, %r9d                   #  4     0x8   3      OPC=xorl_r32_r32     
  callq .move_r9b_to_byte_5_of_rbx  #  5     0xb   5      OPC=callq_label      
  retq                              #  6     0x10  1      OPC=retq             
                                                                               
.size target, .-target
