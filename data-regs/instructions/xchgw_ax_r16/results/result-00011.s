  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  movq $0x7, %rdx  #  1     0     10     OPC=movq_r64_imm64  
  xchgw %ax, %bx   #  2     0xa   3      OPC=xchgw_r16_r16   
  xaddb %dh, %bl   #  3     0xd   3      OPC=xaddb_r8_rh     
  retq             #  4     0x10  1      OPC=retq            
                                                             
.size target, .-target
