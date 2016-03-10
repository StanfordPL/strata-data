  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  rolb $0x1, %bl   #  1     0    2      OPC=rolb_r8_one   
  rorb $0x1, %bl   #  2     0x2  2      OPC=rorb_r8_one   
  subl %ecx, %ebx  #  3     0x4  2      OPC=subl_r32_r32  
  retq             #  4     0x6  1      OPC=retq          
                                                          
.size target, .-target
