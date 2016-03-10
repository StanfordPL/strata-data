  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  movzbl %cl, %eax     #  1     0    3      OPC=movzbl_r32_r8     
  cmovnael %ecx, %ebx  #  2     0x3  3      OPC=cmovnael_r32_r32  
  clc                  #  3     0x6  1      OPC=clc               
  adcb %ah, %bl        #  4     0x7  2      OPC=adcb_r8_rh        
  retq                 #  5     0x9  1      OPC=retq              
                                                                  
.size target, .-target
