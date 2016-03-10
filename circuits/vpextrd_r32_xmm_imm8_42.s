  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  callq .move_128_064_xmm1_r8_r9  #  1     0     5      OPC=callq_label     
  movq $0x4, %rbx                 #  2     0x5   10     OPC=movq_r64_imm64  
  xchgq %rbx, %r8                 #  3     0xf   3      OPC=xchgq_r64_r64   
  xchgl %ebx, %r9d                #  4     0x12  3      OPC=xchgl_r32_r32   
  retq                            #  5     0x15  1      OPC=retq            
                                                                            
.size target, .-target
