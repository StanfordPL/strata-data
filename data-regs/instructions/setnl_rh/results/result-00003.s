  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x10, %rax  #  1     0     10     OPC=movq_r64_imm64  
  cltq              #  2     0xa   2      OPC=cltq            
  cwtd              #  3     0xc   2      OPC=cwtd            
  setge %dh         #  4     0xe   3      OPC=setge_rh        
  movswq %dx, %r8   #  5     0x11  4      OPC=movswq_r64_r16  
  orq %r8, %rax     #  6     0x15  3      OPC=orq_r64_r64     
  retq              #  7     0x18  1      OPC=retq            
                                                              
.size target, .-target
