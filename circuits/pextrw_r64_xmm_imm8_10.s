  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  movq $0x20, %rbx                              #  1     0     10     OPC=movq_r64_imm64   
  andb %bl, %bl                                 #  2     0xa   2      OPC=andb_r8_r8       
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0xc   5      OPC=callq_label      
  cmovpow %r11w, %bx                            #  4     0x11  5      OPC=cmovpow_r16_r16  
  retq                                          #  5     0x16  1      OPC=retq             
                                                                                           
.size target, .-target
