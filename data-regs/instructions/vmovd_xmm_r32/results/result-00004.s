  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  vzeroall                           #  1     0     3      OPC=vzeroall         
  callq .move_128_064_xmm1_r8_r9     #  2     0x3   5      OPC=callq_label      
  callq .move_128_64_xmm3_xmm8_xmm9  #  3     0x8   5      OPC=callq_label      
  vmovdqa %xmm8, %xmm1               #  4     0xd   5      OPC=vmovdqa_xmm_xmm  
  xchgl %ebx, %r8d                   #  5     0x12  3      OPC=xchgl_r32_r32    
  callq .move_064_128_r8_r9_xmm1     #  6     0x15  5      OPC=callq_label      
  retq                               #  7     0x1a  1      OPC=retq             
                                                                                
.size target, .-target
