  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  movb %bl, %ch    #  1     0     2      OPC=movb_rh_r8      
  movq $0x0, %rsi  #  2     0x2   10     OPC=movq_r64_imm64  
  shll $0x1, %esi  #  3     0xc   2      OPC=shll_r32_one    
  sbbb %ch, %ah    #  4     0xe   2      OPC=sbbb_rh_rh      
  retq             #  5     0x10  1      OPC=retq            
                                                             
.size target, .-target
