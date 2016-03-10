  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode               
.target:                           #        0     0      OPC=<label>          
  cmovpel %ecx, %ebx               #  1     0     3      OPC=cmovpel_r32_r32  
  callq .move_064_032_rbx_r8d_r9d  #  2     0x3   5      OPC=callq_label      
  popcntl %r8d, %r12d              #  3     0x8   5      OPC=popcntl_r32_r32  
  setnge %r12b                     #  4     0xd   4      OPC=setnge_r8        
  adcb %r12b, %bl                  #  5     0x11  3      OPC=adcb_r8_r8       
  retq                             #  6     0x14  1      OPC=retq             
                                                                              
.size target, .-target
