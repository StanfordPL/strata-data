  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  movq $0x7, %rax  #  1     0     10     OPC=movq_r64_imm64  
  rolw $0x1, %ax   #  2     0xa   3      OPC=rolw_r16_one    
  setz %cl         #  3     0xd   3      OPC=setz_r8         
  xorb %cl, %ah    #  4     0x10  2      OPC=xorb_rh_r8      
  retq             #  5     0x12  1      OPC=retq            
                                                             
.size target, .-target
