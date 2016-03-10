  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vpmovsxdq %xmm1, %ymm8   #  1     0     5      OPC=vpmovsxdq_ymm_xmm  
  vmovshdup %ymm8, %ymm13  #  2     0x5   5      OPC=vmovshdup_ymm_ymm  
  vmovdqa %ymm13, %ymm9    #  3     0xa   5      OPC=vmovdqa_ymm_ymm    
  vcvtpd2ps %ymm9, %xmm7   #  4     0xf   5      OPC=vcvtpd2ps_xmm_ymm  
  movapd %xmm7, %xmm1      #  5     0x14  4      OPC=movapd_xmm_xmm     
  retq                     #  6     0x18  1      OPC=retq               
                                                                        
.size target, .-target
