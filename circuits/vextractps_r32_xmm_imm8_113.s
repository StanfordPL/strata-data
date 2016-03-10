  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vmovshdup %xmm1, %xmm7  #  1     0    4      OPC=vmovshdup_xmm_xmm  
  xorl %ebx, %ebx         #  2     0x4  2      OPC=xorl_r32_r32       
  movd %xmm7, %r13d       #  3     0x6  5      OPC=movd_r32_xmm       
  cmovpel %r13d, %ebx     #  4     0xb  4      OPC=cmovpel_r32_r32    
  retq                    #  5     0xf  1      OPC=retq               
                                                                      
.size target, .-target
