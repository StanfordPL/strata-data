  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  movslq %ebx, %rsi   #  1     0     3      OPC=movslq_r64_r32   
  xchgl %ebx, %ebx    #  2     0x3   2      OPC=xchgl_r32_r32    
  popcntw %si, %r13w  #  3     0x5   6      OPC=popcntw_r16_r16  
  movslq %ebx, %r11   #  4     0xb   3      OPC=movslq_r64_r32   
  xchgl %esi, %ebx    #  5     0xe   2      OPC=xchgl_r32_r32    
  adcl %r11d, %ebx    #  6     0x10  3      OPC=adcl_r32_r32     
  retq                #  7     0x13  1      OPC=retq             
                                                                 
.size target, .-target
