  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  callq .move_064_032_rcx_r12d_r13d  #  1     0     5      OPC=callq_label   
  xorl %r12d, %edx                   #  2     0x5   3      OPC=xorl_r32_r32  
  xorq %rdx, %rcx                    #  3     0x8   3      OPC=xorq_r64_r64  
  callq .move_032_064_r12d_r13d_rdx  #  4     0xb   5      OPC=callq_label   
  shlq %cl, %rdx                     #  5     0x10  3      OPC=shlq_r64_cl   
  callq .move_064_032_rdx_r8d_r9d    #  6     0x13  5      OPC=callq_label   
  callq .move_032_064_r8d_r9d_rbx    #  7     0x18  5      OPC=callq_label   
  retq                               #  8     0x1d  1      OPC=retq          
                                                                             
.size target, .-target
