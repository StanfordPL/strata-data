  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode               
.target:                           #        0     0      OPC=<label>          
  movq $0xffffffffffffffe0, %rdx   #  1     0     10     OPC=movq_r64_imm64   
  callq .move_064_032_rdx_r8d_r9d  #  2     0xa   5      OPC=callq_label      
  popcntq %rdx, %r12               #  3     0xf   5      OPC=popcntq_r64_r64  
  adcw %r9w, %bx                   #  4     0x14  4      OPC=adcw_r16_r16     
  retq                             #  5     0x18  1      OPC=retq             
                                                                              
.size target, .-target
