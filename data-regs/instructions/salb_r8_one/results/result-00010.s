  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64  
  addb %bl, %al    #  2     0x3  2      OPC=addb_r8_r8    
  shlb $0x1, %bl   #  3     0x5  2      OPC=shlb_r8_one   
  rolb $0x1, %al   #  4     0x7  2      OPC=rolb_r8_one   
  retq             #  5     0x9  1      OPC=retq          
                                                          
.size target, .-target
