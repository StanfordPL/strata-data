  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  movslq %ebx, %rdi                #  1     0     3      OPC=movslq_r64_r32  
  xchgl %ecx, %ebx                 #  2     0x3   2      OPC=xchgl_r32_r32   
  callq .move_064_032_rcx_r8d_r9d  #  3     0x5   5      OPC=callq_label     
  addw %r8w, %r9w                  #  4     0xa   4      OPC=addw_r16_r16    
  adcl %ebx, %edi                  #  5     0xe   2      OPC=adcl_r32_r32    
  xchgl %edi, %ebx                 #  6     0x10  2      OPC=xchgl_r32_r32   
  retq                             #  7     0x12  1      OPC=retq            
                                                                             
.size target, .-target
