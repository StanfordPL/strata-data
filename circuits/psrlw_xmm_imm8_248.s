  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vcvtdq2pd %xmm1, %xmm8                        #  1     0     4      OPC=vcvtdq2pd_xmm_xmm  
  cvtpd2ps %xmm8, %xmm2                         #  2     0x4   5      OPC=cvtpd2ps_xmm_xmm   
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  3     0x9   5      OPC=callq_label        
  cvtdq2pd %xmm7, %xmm1                         #  4     0xe   4      OPC=cvtdq2pd_xmm_xmm   
  retq                                          #  5     0x12  1      OPC=retq               
                                                                                             
.size target, .-target
