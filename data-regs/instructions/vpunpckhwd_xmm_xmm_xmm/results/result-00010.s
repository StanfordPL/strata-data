  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                       #  Line  RIP   Bytes  Opcode                  
.target:                     #        0     0      OPC=<label>             
  pmovzxdq %xmm2, %xmm8      #  1     0     6      OPC=pmovzxdq_xmm_xmm    
  vmovdqu %xmm2, %xmm11      #  2     0x6   4      OPC=vmovdqu_xmm_xmm     
  punpckhwd %xmm3, %xmm11    #  3     0xa   5      OPC=punpckhwd_xmm_xmm   
  vcvtpd2dqx %xmm8, %xmm3    #  4     0xf   5      OPC=vcvtpd2dqx_xmm_xmm  
  vpor %xmm11, %xmm3, %xmm1  #  5     0x14  5      OPC=vpor_xmm_xmm_xmm    
  retq                       #  6     0x19  1      OPC=retq                
                                                                           
.size target, .-target
