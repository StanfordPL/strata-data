  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0xfffffffffffffffa, %rbx     #  1     0     10     OPC=movq_r64_imm64  
  callq .move_byte_4_of_rbx_to_r8b   #  2     0xa   5      OPC=callq_label     
  callq .move_r8b_to_byte_8_of_ymm1  #  3     0xf   5      OPC=callq_label     
  movq %xmm1, %rbx                   #  4     0x14  5      OPC=movq_r64_xmm    
  retq                               #  5     0x19  1      OPC=retq            
                                                                               
.size target, .-target
