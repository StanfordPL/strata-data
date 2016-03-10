  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x20, %r15  #  1     0     10     OPC=movq_r64_imm64  
  movzbl %bl, %eax  #  2     0xa   3      OPC=movzbl_r32_r8   
  shlb $0x1, %r15b  #  3     0xd   3      OPC=shlb_r8_one     
  adcb %cl, %bl     #  4     0x10  2      OPC=adcb_r8_r8      
  movsbl %al, %ecx  #  5     0x12  3      OPC=movsbl_r32_r8   
  retq              #  6     0x15  1      OPC=retq            
                                                              
.size target, .-target
