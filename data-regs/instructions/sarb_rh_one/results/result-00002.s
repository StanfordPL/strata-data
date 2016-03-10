  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  movzbl %ah, %esp   #  1     0    3      OPC=movzbl_r32_rh  
  movsbl %spl, %eax  #  2     0x3  4      OPC=movsbl_r32_r8  
  sarw $0x1, %ax     #  3     0x7  3      OPC=sarw_r16_one   
  xchgb %ah, %al     #  4     0xa  2      OPC=xchgb_r8_rh    
  retq               #  5     0xc  1      OPC=retq           
                                                             
.size target, .-target
