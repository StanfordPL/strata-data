  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vpmovsxdq %xmm1, %ymm0            #  1     0     5      OPC=vpmovsxdq_ymm_xmm  
  vmovshdup %ymm0, %ymm5            #  2     0x5   4      OPC=vmovshdup_ymm_ymm  
  vcvtpd2ps %ymm5, %xmm2            #  3     0x9   4      OPC=vcvtpd2ps_xmm_ymm  
  callq .move_128_064_xmm2_r12_r13  #  4     0xd   5      OPC=callq_label        
  callq .move_064_128_r12_r13_xmm1  #  5     0x12  5      OPC=callq_label        
  retq                              #  6     0x17  1      OPC=retq               
                                                                                 
.size target, .-target
