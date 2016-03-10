  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  movddup %xmm1, %xmm3                          #  1     0     4      OPC=movddup_xmm_xmm  
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  2     0x4   5      OPC=callq_label      
  movq $0x7, %rbx                               #  3     0x9   10     OPC=movq_r64_imm64   
  xchgb %r11b, %bl                              #  4     0x13  3      OPC=xchgb_r8_r8      
  retq                                          #  5     0x16  1      OPC=retq             
                                                                                           
.size target, .-target
