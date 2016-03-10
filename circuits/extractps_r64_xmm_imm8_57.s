  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode              
.target:                                          #        0     0      OPC=<label>         
  movq $0x2, %rbx                                 #  1     0     10     OPC=movq_r64_imm64  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0xa   5      OPC=callq_label     
  vmovd %xmm9, %r8d                               #  3     0xf   5      OPC=vmovd_r32_xmm   
  rorb $0x1, %bl                                  #  4     0x14  2      OPC=rorb_r8_one     
  xchgl %ebx, %r8d                                #  5     0x16  3      OPC=xchgl_r32_r32   
  retq                                            #  6     0x19  1      OPC=retq            
                                                                                            
.size target, .-target
