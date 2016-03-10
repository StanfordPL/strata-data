  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                      #  Line  RIP   Bytes  Opcode                 
.target:                    #        0     0      OPC=<label>            
  andnl %ecx, %ebx, %r13d   #  1     0     5      OPC=andnl_r32_r32_r32  
  xorl %ebx, %ebx           #  2     0x5   2      OPC=xorl_r32_r32       
  andnl %ecx, %r13d, %r15d  #  3     0x7   5      OPC=andnl_r32_r32_r32  
  xaddl %ebx, %r15d         #  4     0xc   4      OPC=xaddl_r32_r32      
  retq                      #  5     0x10  1      OPC=retq               
                                                                         
.size target, .-target
