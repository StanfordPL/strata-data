  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  orl %ebx, %ebx          #  1     0    2      OPC=orl_r32_r32        
  andnl %ecx, %ebx, %r9d  #  2     0x2  5      OPC=andnl_r32_r32_r32  
  xorl %ecx, %r9d         #  3     0x7  3      OPC=xorl_r32_r32       
  xchgl %r9d, %ebx        #  4     0xa  3      OPC=xchgl_r32_r32      
  retq                    #  5     0xd  1      OPC=retq               
                                                                      
.size target, .-target
