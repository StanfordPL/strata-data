  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP  Bytes  Opcode              
.target:                           #        0    0      OPC=<label>         
  callq .move_064_032_rcx_r8d_r9d  #  1     0    5      OPC=callq_label     
  callq .move_032_064_r8d_r9d_rdx  #  2     0x5  5      OPC=callq_label     
  cmoveq %rdx, %rbx                #  3     0xa  4      OPC=cmoveq_r64_r64  
  retq                             #  4     0xe  1      OPC=retq            
                                                                            
.size target, .-target
