  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  setl %r15b               #  1     0     4      OPC=setl_r8       
  callq .read_of_into_rcx  #  2     0x4   5      OPC=callq_label   
  xaddb %cl, %r15b         #  3     0x9   4      OPC=xaddb_r8_r8   
  addw %cx, %cx            #  4     0xd   3      OPC=addw_r16_r16  
  callq .read_zf_into_rbx  #  5     0x10  5      OPC=callq_label   
  retq                     #  6     0x15  1      OPC=retq          
                                                                   
.size target, .-target
