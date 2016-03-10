  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  movq $0x5, %rax  #  1     0     10     OPC=movq_r64_imm64  
  cltq             #  2     0xa   2      OPC=cltq            
  incw %ax         #  3     0xc   3      OPC=incw_r16        
  setnae %ah       #  4     0xf   3      OPC=setnae_rh       
  cltq             #  5     0x12  2      OPC=cltq            
  retq             #  6     0x14  1      OPC=retq            
                                                             
.size target, .-target
