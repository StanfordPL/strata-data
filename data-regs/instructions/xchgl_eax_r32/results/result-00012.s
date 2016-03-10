  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .move_032_016_ebx_r12w_r13w  #  1     0     5      OPC=callq_label    
  callq .move_016_032_r12w_r13w_ecx  #  2     0x5   5      OPC=callq_label    
  xaddl %ebx, %eax                   #  3     0xa   3      OPC=xaddl_r32_r32  
  xaddl %eax, %ecx                   #  4     0xd   3      OPC=xaddl_r32_r32  
  retq                               #  5     0x10  1      OPC=retq           
                                                                              
.size target, .-target
