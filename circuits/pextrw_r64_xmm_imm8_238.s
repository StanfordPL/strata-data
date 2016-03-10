  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode              
.target:                                    #        0    0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0    5      OPC=callq_label     
  movzwq %r9w, %rdi                         #  2     0x5  4      OPC=movzwq_r64_r16  
  movsbl %ah, %ebx                          #  3     0x9  3      OPC=movsbl_r32_rh   
  xchgq %rdi, %rbx                          #  4     0xc  3      OPC=xchgq_r64_r64   
  retq                                      #  5     0xf  1      OPC=retq            
                                                                                     
.size target, .-target
