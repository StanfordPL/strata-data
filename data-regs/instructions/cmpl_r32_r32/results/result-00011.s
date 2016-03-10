  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  orw %cx, %cx     #  1     0    3      OPC=orw_r16_r16   
  subl %ecx, %ebx  #  2     0x3  2      OPC=subl_r32_r32  
  retq             #  3     0x5  1      OPC=retq          
                                                          
.size target, .-target
