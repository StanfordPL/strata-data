  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  movq $0x7, %rbx  #  1     0    10     OPC=movq_r64_imm64  
  shlb $0x1, %bh   #  2     0xa  2      OPC=shlb_rh_one     
  xchgw %bx, %cx   #  3     0xc  3      OPC=xchgw_r16_r16   
  retq             #  4     0xf  1      OPC=retq            
                                                            
.size target, .-target
