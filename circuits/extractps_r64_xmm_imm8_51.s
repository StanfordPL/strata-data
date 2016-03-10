  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  movq $0x8, %rbx                               #  1     0     10     OPC=movq_r64_imm64   
  xorl %edi, %edi                               #  2     0xa   2      OPC=xorl_r32_r32     
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0xc   5      OPC=callq_label      
  cmovnbl %r13d, %ebx                           #  4     0x11  4      OPC=cmovnbl_r32_r32  
  retq                                          #  5     0x15  1      OPC=retq             
                                                                                           
.size target, .-target
