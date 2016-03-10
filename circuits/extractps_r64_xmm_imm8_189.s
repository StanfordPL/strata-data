  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label     
  movd %xmm5, %eax                              #  2     0x5   4      OPC=movd_r32_xmm    
  movq $0xffffffffffffff80, %rbx                #  3     0x9   10     OPC=movq_r64_imm64  
  xchgl %ebx, %eax                              #  4     0x13  1      OPC=xchgl_eax_r32   
  retq                                          #  5     0x14  1      OPC=retq            
                                                                                          
.size target, .-target
