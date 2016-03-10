  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP  Bytes  Opcode             
.target:                             #        0    0      OPC=<label>        
  callq .move_064_032_rbx_r10d_r11d  #  1     0    5      OPC=callq_label    
  callq .move_032_064_r10d_r11d_rbx  #  2     0x5  5      OPC=callq_label    
  xchgq %rbx, %rax                   #  3     0xa  2      OPC=xchgq_rax_r64  
  retq                               #  4     0xc  1      OPC=retq           
                                                                             
.size target, .-target
