  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffffe, %rbp  #  1     0     10     OPC=movq_r64_imm64  
  callq .move_016_008_bx_r8b_r9b  #  2     0xa   5      OPC=callq_label     
  callq .move_008_016_r8b_r9b_bx  #  3     0xf   5      OPC=callq_label     
  callq .set_cf                   #  4     0x14  5      OPC=callq_label     
  adcw %bp, %bx                   #  5     0x19  3      OPC=adcw_r16_r16    
  retq                            #  6     0x1c  1      OPC=retq            
                                                                            
.size target, .-target
