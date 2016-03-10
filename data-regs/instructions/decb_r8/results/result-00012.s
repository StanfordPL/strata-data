  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xorq %rax, %rax   #  1     0    3      OPC=xorq_r64_r64   
  movsbl %bl, %ebx  #  2     0x3  3      OPC=movsbl_r32_r8  
  decw %ax          #  3     0x6  3      OPC=decw_r16       
  clc               #  4     0x9  1      OPC=clc            
  adcb %al, %bl     #  5     0xa  2      OPC=adcb_r8_r8     
  retq              #  6     0xc  1      OPC=retq           
                                                            
.size target, .-target
