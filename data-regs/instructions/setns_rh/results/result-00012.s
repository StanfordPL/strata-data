  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  setns %dl        #  1     0     3      OPC=setns_r8        
  movq $0x8, %rax  #  2     0x3   10     OPC=movq_r64_imm64  
  cbtw             #  3     0xd   2      OPC=cbtw            
  xaddb %ah, %dl   #  4     0xf   3      OPC=xaddb_r8_rh     
  retq             #  5     0x12  1      OPC=retq            
                                                             
.size target, .-target
