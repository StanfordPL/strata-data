  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  cmovngw %bx, %bx    #  1     0    4      OPC=cmovngw_r16_r16  
  cmovngl %ecx, %ebx  #  2     0x4  3      OPC=cmovngl_r32_r32  
  retq                #  3     0x7  1      OPC=retq             
                                                                
.size target, .-target
