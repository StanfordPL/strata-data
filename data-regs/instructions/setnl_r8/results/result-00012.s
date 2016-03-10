  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  setge %dl        #  1     0     3      OPC=setge_r8        
  movq $0x5, %rbx  #  2     0x3   10     OPC=movq_r64_imm64  
  xaddb %bl, %dl   #  3     0xd   3      OPC=xaddb_r8_r8     
  retq             #  4     0x10  1      OPC=retq            
                                                             
.size target, .-target
