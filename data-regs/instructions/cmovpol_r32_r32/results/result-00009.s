  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  setp %dh            #  1     0     3      OPC=setp_rh          
  movsbw %dh, %dx     #  2     0x3   4      OPC=movsbw_r16_rh    
  popcntw %dx, %r13w  #  3     0x7   6      OPC=popcntw_r16_r16  
  cmovzl %ecx, %ebx   #  4     0xd   3      OPC=cmovzl_r32_r32   
  retq                #  5     0x10  1      OPC=retq             
                                                                 
.size target, .-target
