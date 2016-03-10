  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  movq $0x0, %rbx                               #  1     0     10     OPC=movq_r64_imm64  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0xa   5      OPC=callq_label     
  movd %xmm7, %r14d                             #  3     0xf   5      OPC=movd_r32_xmm    
  xchgl %ebx, %r14d                             #  4     0x14  3      OPC=xchgl_r32_r32   
  retq                                          #  5     0x17  1      OPC=retq            
                                                                                          
.size target, .-target
