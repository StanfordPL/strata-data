  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode              
.target:                             #        0    0      OPC=<label>         
  vmovd %xmm1, %edx                  #  1     0    4      OPC=vmovd_r32_xmm   
  callq .move_032_016_edx_r12w_r13w  #  2     0x4  5      OPC=callq_label     
  movzwq %r13w, %rbx                 #  3     0x9  4      OPC=movzwq_r64_r16  
  retq                               #  4     0xd  1      OPC=retq            
                                                                              
.size target, .-target
