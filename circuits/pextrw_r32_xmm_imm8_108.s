  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  movq $0x10, %rbx                #  1     0     10     OPC=movq_r64_imm64   
  testl %ebx, %ebx                #  2     0xa   2      OPC=testl_r32_r32    
  callq .move_128_064_xmm1_r8_r9  #  3     0xc   5      OPC=callq_label      
  cmovncw %r9w, %bx               #  4     0x11  5      OPC=cmovncw_r16_r16  
  retq                            #  5     0x16  1      OPC=retq             
                                                                             
.size target, .-target
