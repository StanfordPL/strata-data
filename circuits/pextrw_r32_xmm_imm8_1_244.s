  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0x20, %rbx                #  1     0     10     OPC=movq_r64_imm64  
  callq .move_128_064_xmm1_r8_r9  #  2     0xa   5      OPC=callq_label     
  xorw %bx, %bx                   #  3     0xf   3      OPC=xorw_r16_r16    
  orw %r9w, %bx                   #  4     0x12  4      OPC=orw_r16_r16     
  retq                            #  5     0x16  1      OPC=retq            
                                                                            
.size target, .-target
