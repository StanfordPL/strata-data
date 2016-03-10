  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label      
  movq $0x5, %rbx                               #  2     0x5   10     OPC=movq_r64_imm64   
  xchgw %r11w, %bx                              #  3     0xf   4      OPC=xchgw_r16_r16    
  callq .move_064_032_rbx_r8d_r9d               #  4     0x13  5      OPC=callq_label      
  callq .move_r9b_to_byte_7_of_rbx              #  5     0x18  5      OPC=callq_label      
  incb %r9b                                     #  6     0x1d  3      OPC=incb_r8          
  cmovlew %r9w, %bx                             #  7     0x20  5      OPC=cmovlew_r16_r16  
  retq                                          #  8     0x25  1      OPC=retq             
                                                                                           
.size target, .-target
