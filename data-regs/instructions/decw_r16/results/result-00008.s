  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  movq $0xfffffffffffffffe, %rcx   #  1     0     10     OPC=movq_r64_imm64  
  callq .move_064_032_rcx_r8d_r9d  #  2     0xa   5      OPC=callq_label     
  callq .clear_cf                  #  3     0xf   5      OPC=callq_label     
  adcw %r9w, %bx                   #  4     0x14  4      OPC=adcw_r16_r16    
  retq                             #  5     0x18  1      OPC=retq            
                                                                             
.size target, .-target
