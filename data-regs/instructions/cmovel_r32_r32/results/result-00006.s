  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  xchgl %ecx, %ebx    #  1     0    2      OPC=xchgl_r32_r32    
  cmovnel %ecx, %ebx  #  2     0x2  3      OPC=cmovnel_r32_r32  
  cmovnel %ebx, %ebx  #  3     0x5  3      OPC=cmovnel_r32_r32  
  retq                #  4     0x8  1      OPC=retq             
                                                                
.size target, .-target
