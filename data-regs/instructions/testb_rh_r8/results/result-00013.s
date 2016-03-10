  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  movq $0x4, %rdx  #  1     0    10     OPC=movq_r64_imm64  
  testb %ah, %bl   #  2     0xa  2      OPC=testb_r8_rh     
  roll $0x1, %edx  #  3     0xc  2      OPC=roll_r32_one    
  retq             #  4     0xe  1      OPC=retq            
                                                            
.size target, .-target
