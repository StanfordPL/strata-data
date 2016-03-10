  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  movq $0x0, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  setnp %sil       #  2     0xa   4      OPC=setnp_r8        
  xaddb %sil, %bl  #  3     0xe   4      OPC=xaddb_r8_r8     
  retq             #  4     0x12  1      OPC=retq            
                                                             
.size target, .-target
