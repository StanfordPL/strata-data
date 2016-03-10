  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode               
.target:                                          #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label      
  xorq %rbx, %rbx                                 #  2     0x5   3      OPC=xorq_r64_r64     
  shlw $0x1, %bx                                  #  3     0x8   3      OPC=shlw_r16_one     
  movq %xmm11, %rdi                               #  4     0xb   5      OPC=movq_r64_xmm     
  cmovbeq %rdi, %rbx                              #  5     0x10  4      OPC=cmovbeq_r64_r64  
  retq                                            #  6     0x14  1      OPC=retq             
                                                                                             
.size target, .-target
