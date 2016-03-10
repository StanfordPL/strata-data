  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label    
  callq .move_128_064_xmm1_r12_r13   #  2     0x5   5      OPC=callq_label    
  vmovd %xmm8, %ebx                  #  3     0xa   4      OPC=vmovd_r32_xmm  
  xchgq %r13, %rbx                   #  4     0xe   3      OPC=xchgq_r64_r64  
  retq                               #  5     0x11  1      OPC=retq           
                                                                              
.size target, .-target
