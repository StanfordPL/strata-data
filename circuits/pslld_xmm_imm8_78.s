  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vmovshdup %xmm1, %xmm6        #  1     0     4      OPC=vmovshdup_xmm_xmm   
  vxorpd %xmm15, %xmm15, %xmm8  #  2     0x4   5      OPC=vxorpd_xmm_xmm_xmm  
  cvtpd2ps %xmm6, %xmm1         #  3     0x9   4      OPC=cvtpd2ps_xmm_xmm    
  movhlps %xmm8, %xmm1          #  4     0xd   4      OPC=movhlps_xmm_xmm     
  retq                          #  5     0x11  1      OPC=retq                
                                                                              
.size target, .-target
