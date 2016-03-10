  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vpmovsxdq %xmm1, %ymm4                        #  1     0     5      OPC=vpmovsxdq_ymm_xmm  
  vmovshdup %ymm4, %ymm0                        #  2     0x5   4      OPC=vmovshdup_ymm_ymm  
  vcvtpd2ps %ymm0, %xmm2                        #  3     0x9   4      OPC=vcvtpd2ps_xmm_ymm  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  4     0xd   5      OPC=callq_label        
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x12  5      OPC=callq_label        
  retq                                          #  6     0x17  1      OPC=retq               
                                                                                             
.size target, .-target
