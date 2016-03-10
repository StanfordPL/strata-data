  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode              
.target:                                          #        0     0      OPC=<label>         
  xorl %ebx, %ebx                                 #  1     0     2      OPC=xorl_r32_r32    
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x2   5      OPC=callq_label     
  vmovd %xmm11, %r13d                             #  3     0x7   5      OPC=vmovd_r32_xmm   
  cmovzq %r13, %rbx                               #  4     0xc   4      OPC=cmovzq_r64_r64  
  retq                                            #  5     0x10  1      OPC=retq            
                                                                                            
.size target, .-target
