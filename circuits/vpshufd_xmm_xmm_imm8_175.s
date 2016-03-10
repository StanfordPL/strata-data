  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vmovss %xmm11, %xmm2, %xmm1                     #  2     0x5   5      OPC=vmovss_xmm_xmm_xmm  
  vmovsldup %xmm1, %xmm8                          #  3     0xa   4      OPC=vmovsldup_xmm_xmm   
  vcvtpd2ps %xmm9, %xmm9                          #  4     0xe   5      OPC=vcvtpd2ps_xmm_xmm   
  callq .move_128_256_xmm8_xmm9_ymm1              #  5     0x13  5      OPC=callq_label         
  retq                                            #  6     0x18  1      OPC=retq                
                                                                                                
.size target, .-target
