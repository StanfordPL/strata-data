  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  callq .move_128_064_xmm1_r8_r9  #  1     0     5      OPC=callq_label     
  movq $0x80, %rbx                #  2     0x5   10     OPC=movq_r64_imm64  
  cmpw %bx, %bx                   #  3     0xf   3      OPC=cmpw_r16_r16    
  cmovzq %r8, %rbx                #  4     0x12  4      OPC=cmovzq_r64_r64  
  retq                            #  5     0x16  1      OPC=retq            
                                                                            
.size target, .-target
