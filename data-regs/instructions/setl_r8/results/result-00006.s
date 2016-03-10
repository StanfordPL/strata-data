  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  callq .read_sf_into_rbx            #  1     0     5      OPC=callq_label   
  callq .read_of_into_rcx            #  2     0x5   5      OPC=callq_label   
  callq .move_064_032_rcx_r10d_r11d  #  3     0xa   5      OPC=callq_label   
  xorl %r10d, %ebx                   #  4     0xf   3      OPC=xorl_r32_r32  
  retq                               #  5     0x12  1      OPC=retq          
                                                                             
.size target, .-target
