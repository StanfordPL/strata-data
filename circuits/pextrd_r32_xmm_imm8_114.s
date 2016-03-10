  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x1, %rbx                   #  1     0     10     OPC=movq_r64_imm64  
  shlb $0x1, %bl                    #  2     0xa   2      OPC=shlb_r8_one     
  sarb $0x1, %bl                    #  3     0xc   2      OPC=sarb_r8_one     
  callq .move_128_064_xmm1_r10_r11  #  4     0xe   5      OPC=callq_label     
  xchgl %ebx, %r11d                 #  5     0x13  3      OPC=xchgl_r32_r32   
  retq                              #  6     0x16  1      OPC=retq            
                                                                              
.size target, .-target
