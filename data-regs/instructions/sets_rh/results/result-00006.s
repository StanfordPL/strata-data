  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  movq $0x5, %rax  #  1     0     10     OPC=movq_r64_imm64  
  cwtl             #  2     0xa   1      OPC=cwtl            
  cwtl             #  3     0xb   1      OPC=cwtl            
  cltq             #  4     0xc   2      OPC=cltq            
  rolw $0x1, %ax   #  5     0xe   3      OPC=rolw_r16_one    
  setnge %ah       #  6     0x11  3      OPC=setnge_rh       
  cltq             #  7     0x14  2      OPC=cltq            
  retq             #  8     0x16  1      OPC=retq            
                                                             
.size target, .-target
