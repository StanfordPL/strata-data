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
  callq .set_szp_for_bx                           #  3     0x8   5      OPC=callq_label      
  movd %xmm10, %edi                               #  4     0xd   5      OPC=movd_r32_xmm     
  cmovnaq %rdi, %rbx                              #  5     0x12  4      OPC=cmovnaq_r64_r64  
  retq                                            #  6     0x16  1      OPC=retq             
                                                                                             
.size target, .-target
