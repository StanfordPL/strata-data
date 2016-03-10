  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label      
  movq $0x6, %rbx                               #  2     0x5   10     OPC=movq_r64_imm64   
  vmovq %xmm6, %rcx                             #  3     0xf   5      OPC=vmovq_r64_xmm    
  shll $0x1, %ebx                               #  4     0x14  2      OPC=shll_r32_one     
  cmovncw %cx, %bx                              #  5     0x16  4      OPC=cmovncw_r16_r16  
  retq                                          #  6     0x1a  1      OPC=retq             
                                                                                           
.size target, .-target
