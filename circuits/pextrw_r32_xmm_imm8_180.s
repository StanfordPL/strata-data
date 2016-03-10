  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode               
.target:                                          #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label      
  xorq %rdi, %rdi                                 #  2     0x5   3      OPC=xorq_r64_r64     
  movq $0xb4, %rbx                                #  3     0x8   10     OPC=movq_r64_imm64   
  movd %xmm10, %ebp                               #  4     0x12  5      OPC=movd_r32_xmm     
  cmovnlw %bp, %bx                                #  5     0x17  4      OPC=cmovnlw_r16_r16  
  retq                                            #  6     0x1b  1      OPC=retq             
                                                                                             
.size target, .-target
