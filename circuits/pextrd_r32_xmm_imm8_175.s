  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode             
.target:                                        #        0    0      OPC=<label>        
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label    
  vmovd %xmm7, %edx                             #  2     0x5  4      OPC=vmovd_r32_xmm  
  xorq %rbx, %rbx                               #  3     0x9  3      OPC=xorq_r64_r64   
  xchgl %edx, %ebx                              #  4     0xc  2      OPC=xchgl_r32_r32  
  retq                                          #  5     0xe  1      OPC=retq           
                                                                                        
.size target, .-target
