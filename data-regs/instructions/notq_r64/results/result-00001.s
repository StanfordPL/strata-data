  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  movq $0xffffffffffffffff, %rdx   #  1     0     10     OPC=movq_r64_imm64  
  xorq %rbx, %rdx                  #  2     0xa   3      OPC=xorq_r64_r64    
  callq .move_064_032_rdx_r8d_r9d  #  3     0xd   5      OPC=callq_label     
  callq .move_032_064_r8d_r9d_rbx  #  4     0x12  5      OPC=callq_label     
  retq                             #  5     0x17  1      OPC=retq            
                                                                             
.size target, .-target
