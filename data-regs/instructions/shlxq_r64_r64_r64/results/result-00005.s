  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .move_064_032_rcx_r8d_r9d    #  1     0     5      OPC=callq_label    
  callq .move_032_016_edx_r12w_r13w  #  2     0x5   5      OPC=callq_label    
  rolw $0x1, %r13w                   #  3     0xa   4      OPC=rolw_r16_one   
  callq .move_016_032_r12w_r13w_ebx  #  4     0xe   5      OPC=callq_label    
  xchgl %ecx, %ebx                   #  5     0x13  2      OPC=xchgl_r32_r32  
  callq .move_032_064_r8d_r9d_rbx    #  6     0x15  5      OPC=callq_label    
  salq %cl, %rbx                     #  7     0x1a  3      OPC=salq_r64_cl    
  retq                               #  8     0x1d  1      OPC=retq           
                                                                              
.size target, .-target
