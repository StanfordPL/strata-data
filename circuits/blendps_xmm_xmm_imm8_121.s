  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vmovsldup %xmm1, %xmm0               #  1     0     4      OPC=vmovsldup_xmm_xmm        
  punpckhdq %xmm2, %xmm0               #  2     0x4   4      OPC=punpckhdq_xmm_xmm        
  vmovss %xmm2, %xmm1, %xmm12          #  3     0x8   4      OPC=vmovss_xmm_xmm_xmm       
  vcvtpd2ps %xmm2, %xmm4               #  4     0xc   4      OPC=vcvtpd2ps_xmm_xmm        
  vpunpckhqdq %xmm4, %xmm0, %xmm13     #  5     0x10  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  6     0x14  5      OPC=callq_label              
  retq                                 #  7     0x19  1      OPC=retq                     
                                                                                          
.size target, .-target
