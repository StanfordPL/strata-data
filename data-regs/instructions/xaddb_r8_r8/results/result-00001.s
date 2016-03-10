  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode             
.target:              #        0    0      OPC=<label>        
  movsbl %bl, %r13d   #  1     0    4      OPC=movsbl_r32_r8  
  clc                 #  2     0x4  1      OPC=clc            
  movsbl %cl, %ebx    #  3     0x5  3      OPC=movsbl_r32_r8  
  movsbl %r13b, %ecx  #  4     0x8  4      OPC=movsbl_r32_r8  
  adcb %r13b, %bl     #  5     0xc  3      OPC=adcb_r8_r8     
  retq                #  6     0xf  1      OPC=retq           
                                                              
.size target, .-target
