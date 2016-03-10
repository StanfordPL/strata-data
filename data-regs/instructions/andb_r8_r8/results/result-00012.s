  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  xorl %eax, %eax     #  1     0    2      OPC=xorl_r32_r32     
  xaddb %ah, %cl      #  2     0x2  3      OPC=xaddb_r8_rh      
  cmovngl %eax, %eax  #  3     0x5  3      OPC=cmovngl_r32_r32  
  andb %ah, %bl       #  4     0x8  2      OPC=andb_r8_rh       
  retq                #  5     0xa  1      OPC=retq             
                                                                
.size target, .-target
