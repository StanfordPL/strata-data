  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0xfffffffffffffffe, %rcx     #  1     0     10     OPC=movq_r64_imm64  
  callq .move_128_064_xmm1_r12_r13   #  2     0xa   5      OPC=callq_label     
  xchgl %ecx, %r12d                  #  3     0xf   3      OPC=xchgl_r32_r32   
  callq .move_032_064_r12d_r13d_rbx  #  4     0x12  5      OPC=callq_label     
  xaddl %ebx, %r13d                  #  5     0x17  4      OPC=xaddl_r32_r32   
  retq                               #  6     0x1b  1      OPC=retq            
                                                                               
.size target, .-target
