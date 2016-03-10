  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .move_032_016_ebx_r12w_r13w  #  1     0     5      OPC=callq_label    
  xaddb %bl, %r12b                   #  2     0x5   4      OPC=xaddb_r8_r8    
  xchgl %ebx, %ecx                   #  3     0x9   2      OPC=xchgl_r32_r32  
  orq %rcx, %rbx                     #  4     0xb   3      OPC=orq_r64_r64    
  callq .set_szp_for_ebx             #  5     0xe   5      OPC=callq_label    
  retq                               #  6     0x13  1      OPC=retq           
                                                                              
.size target, .-target
