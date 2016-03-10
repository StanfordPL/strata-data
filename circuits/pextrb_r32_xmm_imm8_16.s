  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label     
  movq $0x80, %rbx                              #  2     0x5   10     OPC=movq_r64_imm64  
  movd %xmm4, %ecx                              #  3     0xf   4      OPC=movd_r32_xmm    
  xchgb %cl, %bl                                #  4     0x13  2      OPC=xchgb_r8_r8     
  retq                                          #  5     0x15  1      OPC=retq            
                                                                                          
.size target, .-target
