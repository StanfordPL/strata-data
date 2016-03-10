  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label      
  movq $0x4, %rbx                               #  2     0x5   10     OPC=movq_r64_imm64   
  incb %bh                                      #  3     0xf   2      OPC=incb_rh          
  popcntl %r11d, %ecx                           #  4     0x11  5      OPC=popcntl_r32_r32  
  cmovnpw %r11w, %bx                            #  5     0x16  5      OPC=cmovnpw_r16_r16  
  retq                                          #  6     0x1b  1      OPC=retq             
                                                                                           
.size target, .-target
