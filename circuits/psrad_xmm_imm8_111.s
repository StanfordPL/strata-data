  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vpmovsxdq %xmm1, %ymm11                       #  1     0     5      OPC=vpmovsxdq_ymm_xmm  
  vmovshdup %ymm11, %ymm11                      #  2     0x5   5      OPC=vmovshdup_ymm_ymm  
  vcvtpd2ps %ymm11, %xmm3                       #  3     0xa   5      OPC=vcvtpd2ps_xmm_ymm  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  4     0xf   5      OPC=callq_label        
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x14  5      OPC=callq_label        
  retq                                          #  6     0x19  1      OPC=retq               
                                                                                             
.size target, .-target
