  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  movq $0x0, %rax  #  1     0     10     OPC=movq_r64_imm64  
  cltq             #  2     0xa   2      OPC=cltq            
  setnle %ah       #  3     0xc   3      OPC=setnle_rh       
  cwtl             #  4     0xf   1      OPC=cwtl            
  retq             #  5     0x10  1      OPC=retq            
                                                             
.size target, .-target
