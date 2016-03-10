  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  movq $0x1, %rbx                           #  1     0     10     OPC=movq_r64_imm64   
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0xa   5      OPC=callq_label      
  popcntw %dx, %r11w                        #  3     0xf   6      OPC=popcntw_r16_r16  
  cmovpow %r8w, %bx                         #  4     0x15  5      OPC=cmovpow_r16_r16  
  retq                                      #  5     0x1a  1      OPC=retq             
                                                                                       
.size target, .-target
