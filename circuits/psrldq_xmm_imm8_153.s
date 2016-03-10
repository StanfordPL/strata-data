  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vcvtdq2pd %xmm1, %xmm2  #  1     0    4      OPC=vcvtdq2pd_xmm_xmm  
  cvtpd2ps %xmm2, %xmm1   #  2     0x4  4      OPC=cvtpd2ps_xmm_xmm   
  subpd %xmm1, %xmm1      #  3     0x8  4      OPC=subpd_xmm_xmm      
  retq                    #  4     0xc  1      OPC=retq               
                                                                      
.size target, .-target
