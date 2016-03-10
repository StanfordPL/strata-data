  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  movq $0x3, %r14  #  1     0     10     OPC=movq_r64_imm64  
  xorb %ah, %bl    #  2     0xa   2      OPC=xorb_r8_rh      
  movb %bl, %ah    #  3     0xc   2      OPC=movb_rh_r8      
  rolq $0x1, %r14  #  4     0xe   3      OPC=rolq_r64_one    
  retq             #  5     0x11  1      OPC=retq            
                                                             
.size target, .-target
