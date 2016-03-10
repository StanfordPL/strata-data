  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP  Bytes  Opcode                
.target:                  #        0    0      OPC=<label>           
  xorl %eax, %eax         #  1     0    2      OPC=xorl_r32_r32      
  vmovd %eax, %xmm14      #  2     0x2  4      OPC=vmovd_xmm_r32     
  cvtpd2ps %xmm14, %xmm1  #  3     0x6  5      OPC=cvtpd2ps_xmm_xmm  
  retq                    #  4     0xb  1      OPC=retq              
                                                                     
.size target, .-target
