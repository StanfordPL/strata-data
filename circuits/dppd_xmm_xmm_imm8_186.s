  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vandpd %xmm1, %xmm1, %xmm3            #  1     0     4      OPC=vandpd_xmm_xmm_xmm  
  vmulpd %xmm2, %xmm1, %xmm6            #  2     0x4   4      OPC=vmulpd_xmm_xmm_xmm  
  callq .move_256_128_ymm3_xmm12_xmm13  #  3     0x8   5      OPC=callq_label         
  vpmovsxdq %xmm13, %ymm8               #  4     0xd   5      OPC=vpmovsxdq_ymm_xmm   
  cvtpd2ps %xmm8, %xmm1                 #  5     0x12  5      OPC=cvtpd2ps_xmm_xmm    
  haddpd %xmm6, %xmm1                   #  6     0x17  4      OPC=haddpd_xmm_xmm      
  retq                                  #  7     0x1b  1      OPC=retq                
                                                                                      
.size target, .-target
