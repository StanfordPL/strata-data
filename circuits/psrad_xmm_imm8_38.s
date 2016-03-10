  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label        
  callq .move_64_128_xmm12_xmm13_xmm1  #  2     0x5   5      OPC=callq_label        
  vpmovsxdq %xmm1, %ymm10              #  3     0xa   5      OPC=vpmovsxdq_ymm_xmm  
  vmovshdup %ymm10, %ymm4              #  4     0xf   5      OPC=vmovshdup_ymm_ymm  
  vcvtpd2ps %ymm4, %xmm6               #  5     0x14  4      OPC=vcvtpd2ps_xmm_ymm  
  movdqa %xmm6, %xmm1                  #  6     0x18  4      OPC=movdqa_xmm_xmm     
  retq                                 #  7     0x1c  1      OPC=retq               
                                                                                    
.size target, .-target
