  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  xorq %rax, %rax     #  1     0     3      OPC=xorq_r64_r64     
  popcntq %rax, %r11  #  2     0x3   5      OPC=popcntq_r64_r64  
  callq .set_cf       #  3     0x8   5      OPC=callq_label      
  adcl %ebx, %r11d    #  4     0xd   3      OPC=adcl_r32_r32     
  xchgl %r11d, %ebx   #  5     0x10  3      OPC=xchgl_r32_r32    
  retq                #  6     0x13  1      OPC=retq             
                                                                 
.size target, .-target
