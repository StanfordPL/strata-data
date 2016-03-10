  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x0, %rax   #  1     0     10     OPC=movq_r64_imm64  
  cbtw              #  2     0xa   2      OPC=cbtw            
  movzbl %ah, %eax  #  3     0xc   3      OPC=movzbl_r32_rh   
  setle %ah         #  4     0xf   3      OPC=setle_rh        
  cwtl              #  5     0x12  1      OPC=cwtl            
  retq              #  6     0x13  1      OPC=retq            
                                                              
.size target, .-target
