  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  callq .set_cf     #  1     0     5      OPC=callq_label     
  movq $0x10, %rdi  #  2     0x5   10     OPC=movq_r64_imm64  
  adcw %di, %di     #  3     0xf   3      OPC=adcw_r16_r16    
  adcw %cx, %bx     #  4     0x12  3      OPC=adcw_r16_r16    
  retq              #  5     0x15  1      OPC=retq            
                                                              
.size target, .-target
