  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  movq $0x7, %rax  #  1     0     10     OPC=movq_r64_imm64  
  shll $0x1, %eax  #  2     0xa   2      OPC=shll_r32_one    
  xchgb %bl, %ah   #  3     0xc   2      OPC=xchgb_rh_r8     
  xchgb %ah, %bl   #  4     0xe   2      OPC=xchgb_r8_rh     
  shlb $0x1, %bl   #  5     0x10  2      OPC=shlb_r8_one     
  retq             #  6     0x12  1      OPC=retq            
                                                             
.size target, .-target
