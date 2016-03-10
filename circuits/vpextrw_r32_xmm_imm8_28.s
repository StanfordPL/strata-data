  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  callq .move_128_064_xmm1_r8_r9  #  1     0     5      OPC=callq_label     
  movq $0x3, %rbx                 #  2     0x5   10     OPC=movq_r64_imm64  
  negw %bx                        #  3     0xf   3      OPC=negw_r16        
  xchgw %r9w, %bx                 #  4     0x12  4      OPC=xchgw_r16_r16   
  retq                            #  5     0x16  1      OPC=retq            
                                                                            
.size target, .-target
