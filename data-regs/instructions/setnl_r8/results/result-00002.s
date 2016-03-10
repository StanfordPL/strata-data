  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  movq $0x0, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  setge %r9b       #  2     0xa   4      OPC=setge_r8        
  shlb $0x1, %bl   #  3     0xe   2      OPC=shlb_r8_one     
  xchgb %bl, %r9b  #  4     0x10  3      OPC=xchgb_r8_r8     
  retq             #  5     0x13  1      OPC=retq            
                                                             
.size target, .-target
