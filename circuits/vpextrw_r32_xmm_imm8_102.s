  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label     
  movzbl %r9b, %edi                         #  2     0x5   4      OPC=movzbl_r32_r8   
  xchgl %edi, %r9d                          #  3     0x9   3      OPC=xchgl_r32_r32   
  movzwq %di, %rbx                          #  4     0xc   4      OPC=movzwq_r64_r16  
  retq                                      #  5     0x10  1      OPC=retq            
                                                                                      
.size target, .-target
