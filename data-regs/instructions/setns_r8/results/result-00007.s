  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .read_sf_into_rbx  #  1     0     5      OPC=callq_label   
  xorl %r8d, %r8d          #  2     0x5   3      OPC=xorl_r32_r32  
  callq .read_of_into_rcx  #  3     0x8   5      OPC=callq_label   
  xaddb %bl, %cl           #  4     0xd   3      OPC=xaddb_r8_r8   
  callq .read_zf_into_rbx  #  5     0x10  5      OPC=callq_label   
  retq                     #  6     0x15  1      OPC=retq          
                                                                   
.size target, .-target
