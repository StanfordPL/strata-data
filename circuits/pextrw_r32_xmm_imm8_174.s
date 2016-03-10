  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode              
.target:                                        #        0    0      OPC=<label>         
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label     
  vmovq %xmm7, %r8                              #  2     0x5  5      OPC=vmovq_r64_xmm   
  movzwl %r8w, %ebx                             #  3     0xa  4      OPC=movzwl_r32_r16  
  retq                                          #  4     0xe  1      OPC=retq            
                                                                                         
.size target, .-target
