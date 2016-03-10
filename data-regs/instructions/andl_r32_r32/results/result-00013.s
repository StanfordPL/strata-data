  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  andnl %ebx, %ecx, %r10d  #  1     0    5      OPC=andnl_r32_r32_r32  
  xorl %ebx, %r10d         #  2     0x5  3      OPC=xorl_r32_r32       
  xchgl %ebx, %r10d        #  3     0x8  3      OPC=xchgl_r32_r32      
  retq                     #  4     0xb  1      OPC=retq               
                                                                       
.size target, .-target
