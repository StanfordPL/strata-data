  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .move_128_064_xmm1_r12_r13  #  1     0     5      OPC=callq_label     
  movq $0x20, %rbx                  #  2     0x5   10     OPC=movq_r64_imm64  
  movsbw %r13b, %bx                 #  3     0xf   5      OPC=movsbw_r16_r8   
  xchgl %ebx, %r13d                 #  4     0x14  3      OPC=xchgl_r32_r32   
  retq                              #  5     0x17  1      OPC=retq            
                                                                              
.size target, .-target
