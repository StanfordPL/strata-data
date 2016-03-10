  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                 
.target:                       #        0     0      OPC=<label>            
  vpxor %xmm12, %xmm12, %xmm8  #  1     0     5      OPC=vpxor_xmm_xmm_xmm  
  cvtpd2ps %xmm8, %xmm4        #  2     0x5   5      OPC=cvtpd2ps_xmm_xmm   
  vsqrtpd %xmm4, %xmm12        #  3     0xa   4      OPC=vsqrtpd_xmm_xmm    
  movq %xmm12, %xmm1           #  4     0xe   5      OPC=movq_xmm_xmm       
  haddpd %xmm12, %xmm1         #  5     0x13  5      OPC=haddpd_xmm_xmm     
  retq                         #  6     0x18  1      OPC=retq               
                                                                            
.size target, .-target
