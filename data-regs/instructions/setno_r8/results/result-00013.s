  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  callq .read_of_into_rcx          #  1     0     5      OPC=callq_label     
  movq $0xfffffffffffffffb, %rbx   #  2     0x5   10     OPC=movq_r64_imm64  
  callq .move_064_032_rbx_r8d_r9d  #  3     0xf   5      OPC=callq_label     
  sall $0x1, %r9d                  #  4     0x14  3      OPC=sall_r32_one    
  shrq %cl, %rcx                   #  5     0x17  3      OPC=shrq_r64_cl     
  callq .read_sf_into_rbx          #  6     0x1a  5      OPC=callq_label     
  retq                             #  7     0x1f  1      OPC=retq            
                                                                             
.size target, .-target
