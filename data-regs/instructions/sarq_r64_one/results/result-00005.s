  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  stc                      #  1     0     1      OPC=stc              
  callq .read_cf_into_rcx  #  2     0x1   5      OPC=callq_label      
  cmovncq %rbx, %rcx       #  3     0x6   4      OPC=cmovncq_r64_r64  
  popcntl %ecx, %ecx       #  4     0xa   4      OPC=popcntl_r32_r32  
  sarq %cl, %rbx           #  5     0xe   3      OPC=sarq_r64_cl      
  callq .clear_of          #  6     0x11  5      OPC=callq_label      
  retq                     #  7     0x16  1      OPC=retq             
                                                                      
.size target, .-target
