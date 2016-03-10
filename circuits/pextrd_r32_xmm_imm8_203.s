  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode              
.target:                                        #        0    0      OPC=<label>         
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label     
  xorl %ebx, %ebx                               #  2     0x5  2      OPC=xorl_r32_r32    
  vmovq %xmm7, %rax                             #  3     0x7  5      OPC=vmovq_r64_xmm   
  cmovel %eax, %ebx                             #  4     0xc  3      OPC=cmovel_r32_r32  
  retq                                          #  5     0xf  1      OPC=retq            
                                                                                         
.size target, .-target
