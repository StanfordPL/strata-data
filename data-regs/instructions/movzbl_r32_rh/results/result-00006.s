  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  movq $0x7, %rbx  #  1     0    10     OPC=movq_r64_imm64  
  movzbw %ah, %bx  #  2     0xa  4      OPC=movzbw_r16_rh   
  retq             #  3     0xe  1      OPC=retq            
                                                            
.size target, .-target
