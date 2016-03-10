  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpunpcklqdq %xmm9, %xmm9, %xmm1                 #  2     0x5   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  movq $0x0, %rbx                                 #  3     0xa   10     OPC=movq_r64_imm64           
  callq .move_128_064_xmm1_r8_r9                  #  4     0x14  5      OPC=callq_label              
  xchgb %bl, %r9b                                 #  5     0x19  3      OPC=xchgb_r8_r8              
  retq                                            #  6     0x1c  1      OPC=retq                     
                                                                                                     
.size target, .-target
