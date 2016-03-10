  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label     
  movd %xmm9, %r12d                  #  2     0x5   5      OPC=movd_r32_xmm    
  movq $0x7, %rbx                    #  3     0xa   10     OPC=movq_r64_imm64  
  xaddw %bx, %r12w                   #  4     0x14  5      OPC=xaddw_r16_r16   
  retq                               #  5     0x19  1      OPC=retq            
                                                                               
.size target, .-target
