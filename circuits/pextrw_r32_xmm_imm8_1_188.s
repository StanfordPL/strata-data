  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  callq .move_128_64_xmm1_xmm12_xmm13           #  1     0     5      OPC=callq_label      
  movq $0x5, %rbx                               #  2     0x5   10     OPC=movq_r64_imm64   
  callq .move_64_128_xmm12_xmm13_xmm3           #  3     0xf   5      OPC=callq_label      
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  4     0x14  5      OPC=callq_label      
  orb %r12b, %r11b                              #  5     0x19  3      OPC=orb_r8_r8        
  cmovncw %r12w, %bx                            #  6     0x1c  5      OPC=cmovncw_r16_r16  
  retq                                          #  7     0x21  1      OPC=retq             
                                                                                           
.size target, .-target
