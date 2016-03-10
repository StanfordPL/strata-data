  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  cmovngl %ecx, %ebx  #  1     0    3      OPC=cmovngl_r32_r32  
  orl %ebx, %ecx      #  2     0x3  2      OPC=orl_r32_r32      
  cmovbw %bx, %bx     #  3     0x5  4      OPC=cmovbw_r16_r16   
  retq                #  4     0x9  1      OPC=retq             
                                                                
.size target, .-target
