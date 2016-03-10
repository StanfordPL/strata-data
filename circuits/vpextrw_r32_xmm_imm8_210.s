  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  callq .set_cf                                 #  1     0     5      OPC=callq_label      
  movq $0x6, %rbx                               #  2     0x5   10     OPC=movq_r64_imm64   
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0xf   5      OPC=callq_label      
  cmovnbw %r10w, %bx                            #  4     0x14  5      OPC=cmovnbw_r16_r16  
  xchgw %r11w, %bx                              #  5     0x19  4      OPC=xchgw_r16_r16    
  retq                                          #  6     0x1d  1      OPC=retq             
                                                                                           
.size target, .-target
