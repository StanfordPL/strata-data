  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  xorl %r12d, %r12d       #  1     0     3      OPC=xorl_r32_r32       
  mulpd %xmm2, %xmm1      #  2     0x3   4      OPC=mulpd_xmm_xmm      
  cvtpd2ps %xmm1, %xmm7   #  3     0x7   4      OPC=cvtpd2ps_xmm_xmm   
  addpd %xmm7, %xmm1      #  4     0xb   4      OPC=addpd_xmm_xmm      
  cvtsi2sdl %r12d, %xmm1  #  5     0xf   5      OPC=cvtsi2sdl_xmm_r32  
  retq                    #  6     0x14  1      OPC=retq               
                                                                       
.size target, .-target
