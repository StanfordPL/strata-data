  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movq $0x80, %rdx   #  1     0     10     OPC=movq_r64_imm64  
  shll $0x1, %edx    #  2     0xa   2      OPC=shll_r32_one    
  cmovzq %rdx, %rbx  #  3     0xc   4      OPC=cmovzq_r64_r64  
  xchgb %ah, %bl     #  4     0x10  2      OPC=xchgb_r8_rh     
  retq               #  5     0x12  1      OPC=retq            
                                                               
.size target, .-target
