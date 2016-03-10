  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  setle %r12b         #  1     0    4      OPC=setle_r8         
  movsbl %r12b, %edx  #  2     0x4  4      OPC=movsbl_r32_r8    
  negw %dx            #  3     0x8  3      OPC=negw_r16         
  cmovnbl %ecx, %ebx  #  4     0xb  3      OPC=cmovnbl_r32_r32  
  retq                #  5     0xe  1      OPC=retq             
                                                                
.size target, .-target
