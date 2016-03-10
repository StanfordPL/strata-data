  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  rsqrtps %xmm1, %xmm0                            #  1     0     3      OPC=rsqrtps_xmm_xmm    
  vpmovsxdq %xmm0, %ymm13                         #  2     0x3   5      OPC=vpmovsxdq_ymm_xmm  
  vcvtpd2ps %ymm13, %xmm3                         #  3     0x8   5      OPC=vcvtpd2ps_xmm_ymm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  4     0xd   5      OPC=callq_label        
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x12  5      OPC=callq_label        
  retq                                            #  6     0x17  1      OPC=retq               
                                                                                               
.size target, .-target
