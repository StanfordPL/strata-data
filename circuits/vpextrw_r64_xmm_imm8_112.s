  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  movq $0x0, %rbx                   #  1     0     10     OPC=movq_r64_imm64   
  orb %bl, %bl                      #  2     0xa   2      OPC=orb_r8_r8        
  callq .move_128_064_xmm1_r12_r13  #  3     0xc   5      OPC=callq_label      
  cmovpow %bx, %bx                  #  4     0x11  4      OPC=cmovpow_r16_r16  
  xchgw %r12w, %bx                  #  5     0x15  4      OPC=xchgw_r16_r16    
  retq                              #  6     0x19  1      OPC=retq             
                                                                               
.size target, .-target
