  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  sqrtsd %xmm1, %xmm1                #  1     0     4      OPC=sqrtsd_xmm_xmm  
  callq .move_128_64_xmm1_xmm8_xmm9  #  2     0x4   5      OPC=callq_label     
  movq %xmm9, %rbx                   #  3     0x9   5      OPC=movq_r64_xmm    
  movzwl %bx, %ebx                   #  4     0xe   3      OPC=movzwl_r32_r16  
  retq                               #  5     0x11  1      OPC=retq            
                                                                               
.size target, .-target
