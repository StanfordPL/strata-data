  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .move_032_016_ecx_r12w_r13w  #  1     0     5      OPC=callq_label     
  callq .move_016_032_r12w_r13w_edx  #  2     0x5   5      OPC=callq_label     
  cmovzq %rbx, %rdx                  #  3     0xa   4      OPC=cmovzq_r64_r64  
  xchgl %ebx, %edx                   #  4     0xe   2      OPC=xchgl_r32_r32   
  retq                               #  5     0x10  1      OPC=retq            
                                                                               
.size target, .-target
