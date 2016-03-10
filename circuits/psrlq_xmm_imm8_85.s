  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  xorl %ebp, %ebp                  #  1     0     3      OPC=xorl_r32_r32            
  vmovd %ebp, %xmm12               #  2     0x3   4      OPC=vmovd_xmm_r32           
  vcvtsi2ssl %ebp, %xmm12, %xmm11  #  3     0x7   4      OPC=vcvtsi2ssl_xmm_xmm_r32  
  cvtpd2dq %xmm11, %xmm1           #  4     0xb   5      OPC=cvtpd2dq_xmm_xmm        
  retq                             #  5     0x10  1      OPC=retq                    
                                                                                     
.size target, .-target
