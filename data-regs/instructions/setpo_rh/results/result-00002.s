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
  setnp %cl        #  3     0xc   3      OPC=setnp_r8        
  cbtw             #  4     0xf   2      OPC=cbtw            
  xorb %cl, %ah    #  5     0x11  2      OPC=xorb_rh_r8      
  retq             #  6     0x13  1      OPC=retq            
                                                             
.size target, .-target
