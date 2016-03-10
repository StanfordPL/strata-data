  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  vmovaps %xmm1, %xmm7    #  1     0     4      OPC=vmovaps_xmm_xmm    
  xorl %ebx, %ebx         #  2     0x4   2      OPC=xorl_r32_r32       
  vmovshdup %xmm7, %xmm8  #  3     0x6   4      OPC=vmovshdup_xmm_xmm  
  vmovq %xmm8, %r10       #  4     0xa   5      OPC=vmovq_r64_xmm      
  xchgl %ebx, %r10d       #  5     0xf   3      OPC=xchgl_r32_r32      
  retq                    #  6     0x12  1      OPC=retq               
                                                                       
.size target, .-target
