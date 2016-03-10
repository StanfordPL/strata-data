  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP   Bytes  Opcode             
.target:                           #        0     0      OPC=<label>        
  movsbq %cl, %rbp                 #  1     0     4      OPC=movsbq_r64_r8  
  callq .move_032_016_ecx_r8w_r9w  #  2     0x4   5      OPC=callq_label    
  xchgl %ebx, %ebp                 #  3     0x9   2      OPC=xchgl_r32_r32  
  callq .move_016_032_r8w_r9w_ebx  #  4     0xb   5      OPC=callq_label    
  orq %rbp, %rbx                   #  5     0x10  3      OPC=orq_r64_r64    
  callq .set_szp_for_ebx           #  6     0x13  5      OPC=callq_label    
  retq                             #  7     0x18  1      OPC=retq           
                                                                            
.size target, .-target
