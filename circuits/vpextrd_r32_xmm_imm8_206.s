  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode              
.target:                                          #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label     
  movq $0xfffffffffffffffd, %rbx                  #  2     0x5   10     OPC=movq_r64_imm64  
  movd %xmm10, %eax                               #  3     0xf   5      OPC=movd_r32_xmm    
  xchgl %eax, %ebx                                #  4     0x14  1      OPC=xchgl_r32_eax   
  retq                                            #  5     0x15  1      OPC=retq            
                                                                                            
.size target, .-target
