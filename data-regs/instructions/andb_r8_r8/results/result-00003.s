  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movq $0x80, %rax  #  1     0    10     OPC=movq_r64_imm64  
  xorb %cl, %ah     #  2     0xa  2      OPC=xorb_rh_r8      
  andb %ah, %bl     #  3     0xc  2      OPC=andb_r8_rh      
  retq              #  4     0xe  1      OPC=retq            
                                                             
.size target, .-target
