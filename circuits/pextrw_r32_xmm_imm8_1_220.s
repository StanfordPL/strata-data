  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label     
  vmovd %xmm6, %ebx                             #  2     0x5   4      OPC=vmovd_r32_xmm   
  movzwq %bx, %r14                              #  3     0x9   4      OPC=movzwq_r64_r16  
  xchgq %r14, %rbx                              #  4     0xd   3      OPC=xchgq_r64_r64   
  retq                                          #  5     0x10  1      OPC=retq            
                                                                                          
.size target, .-target
