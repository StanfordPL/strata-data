  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vcvtpd2dqx %xmm1, %xmm13         #  1     0     4      OPC=vcvtpd2dqx_xmm_xmm      
  vpunpckhdq %xmm13, %xmm1, %xmm0  #  2     0x4   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  movq %xmm0, %r13                 #  3     0x9   5      OPC=movq_r64_xmm            
  movzwl %r13w, %ebx               #  4     0xe   4      OPC=movzwl_r32_r16          
  retq                             #  5     0x12  1      OPC=retq                    
                                                                                     
.size target, .-target
