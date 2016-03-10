  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  cmovnal %ecx, %ebx  #  1     0    3      OPC=cmovnal_r32_r32  
  movw %bx, %cx       #  2     0x3  3      OPC=movw_r16_r16     
  xaddb %bl, %cl      #  3     0x6  3      OPC=xaddb_r8_r8      
  retq                #  4     0x9  1      OPC=retq             
                                                                
.size target, .-target
