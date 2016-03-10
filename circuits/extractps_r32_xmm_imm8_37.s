  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vmovshdup %xmm1, %xmm12  #  1     0    4      OPC=vmovshdup_xmm_xmm  
  xorl %ebx, %ebx          #  2     0x4  2      OPC=xorl_r32_r32       
  movq %xmm12, %rax        #  3     0x6  5      OPC=movq_r64_xmm       
  cltq                     #  4     0xb  2      OPC=cltq               
  xchgl %eax, %ebx         #  5     0xd  1      OPC=xchgl_r32_eax      
  retq                     #  6     0xe  1      OPC=retq               
                                                                       
.size target, .-target
