  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP  Bytes  Opcode              
.target:                           #        0    0      OPC=<label>         
  callq .move_032_016_ebx_r8w_r9w  #  1     0    5      OPC=callq_label     
  xorl %edi, %edi                  #  2     0x5  2      OPC=xorl_r32_r32    
  cmovbw %r8w, %bx                 #  3     0x7  5      OPC=cmovbw_r16_r16  
  xchgq %rbx, %rax                 #  4     0xc  3      OPC=xchgq_r64_r64   
  retq                             #  5     0xf  1      OPC=retq            
                                                                            
.size target, .-target
