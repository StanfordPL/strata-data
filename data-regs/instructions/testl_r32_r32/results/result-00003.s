  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vmovd %ebx, %xmm4        #  1     0     4      OPC=vmovd_xmm_r32      
  andnl %ebx, %ecx, %r14d  #  2     0x4   5      OPC=andnl_r32_r32_r32  
  movq %xmm4, %rbx         #  3     0x9   5      OPC=movq_r64_xmm       
  xorl %r14d, %ebx         #  4     0xe   3      OPC=xorl_r32_r32       
  retq                     #  5     0x11  1      OPC=retq               
                                                                        
.size target, .-target
