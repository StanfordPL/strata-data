  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP  Bytes  Opcode              
.target:                                    #        0    0      OPC=<label>         
  xorl %ebx, %ebx                           #  1     0    2      OPC=xorl_r32_r32    
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x2  5      OPC=callq_label     
  movzwq %r9w, %rbp                         #  3     0x7  4      OPC=movzwq_r64_r16  
  movw %bp, %bx                             #  4     0xb  3      OPC=movw_r16_r16    
  retq                                      #  5     0xe  1      OPC=retq            
                                                                                     
.size target, .-target
