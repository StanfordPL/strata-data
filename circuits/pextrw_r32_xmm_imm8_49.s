  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP  Bytes  Opcode              
.target:                             #        0    0      OPC=<label>         
  vmovd %xmm1, %ebx                  #  1     0    4      OPC=vmovd_r32_xmm   
  callq .move_032_016_ebx_r12w_r13w  #  2     0x4  5      OPC=callq_label     
  movzwl %r13w, %ebx                 #  3     0x9  4      OPC=movzwl_r32_r16  
  retq                               #  4     0xd  1      OPC=retq            
                                                                              
.size target, .-target
