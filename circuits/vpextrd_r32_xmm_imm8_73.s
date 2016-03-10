  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode             
.target:                                    #        0    0      OPC=<label>        
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0    5      OPC=callq_label    
  xchgl %eax, %edx                          #  2     0x5  1      OPC=xchgl_r32_eax  
  movq %rax, %rbx                           #  3     0x6  3      OPC=movq_r64_r64   
  retq                                      #  4     0x9  1      OPC=retq           
                                                                                    
.size target, .-target
