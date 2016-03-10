  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  cmovzq %rbx, %rcx                #  1     0     4      OPC=cmovzq_r64_r64  
  callq .set_szp_for_rbx           #  2     0x4   5      OPC=callq_label     
  xchgl %ecx, %ebx                 #  3     0x9   2      OPC=xchgl_r32_r32   
  callq .move_032_016_ebx_r8w_r9w  #  4     0xb   5      OPC=callq_label     
  callq .read_pf_into_rbx          #  5     0x10  5      OPC=callq_label     
  callq .move_016_032_r8w_r9w_ebx  #  6     0x15  5      OPC=callq_label     
  retq                             #  7     0x1a  1      OPC=retq            
                                                                             
.size target, .-target
