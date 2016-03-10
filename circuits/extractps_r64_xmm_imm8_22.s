  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode              
.target:                                    #        0    0      OPC=<label>         
  movdqa %xmm1, %xmm3                       #  1     0    4      OPC=movdqa_xmm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  2     0x4  5      OPC=callq_label     
  movl %r8d, %r12d                          #  3     0x9  3      OPC=movl_r32_r32    
  movq %r12, %rbx                           #  4     0xc  3      OPC=movq_r64_r64    
  retq                                      #  5     0xf  1      OPC=retq            
                                                                                     
.size target, .-target
