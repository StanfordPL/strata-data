  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode               
.target:                                          #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label      
  movq $0x4, %rbx                                 #  2     0x5   10     OPC=movq_r64_imm64   
  movss %xmm9, %xmm1                              #  3     0xf   5      OPC=movss_xmm_xmm    
  testl %ebx, %ebx                                #  4     0x14  2      OPC=testl_r32_r32    
  callq .move_128_064_xmm1_r8_r9                  #  5     0x16  5      OPC=callq_label      
  cmovnbw %r8w, %bx                               #  6     0x1b  5      OPC=cmovnbw_r16_r16  
  retq                                            #  7     0x20  1      OPC=retq             
                                                                                             
.size target, .-target
