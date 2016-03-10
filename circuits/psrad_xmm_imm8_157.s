  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vpmovsxdq %xmm1, %ymm3   #  1     0     5      OPC=vpmovsxdq_ymm_xmm  
  vmovshdup %ymm3, %ymm12  #  2     0x5   4      OPC=vmovshdup_ymm_ymm  
  vmovshdup %ymm12, %ymm4  #  3     0x9   5      OPC=vmovshdup_ymm_ymm  
  vcvtpd2ps %ymm4, %xmm9   #  4     0xe   4      OPC=vcvtpd2ps_xmm_ymm  
  movups %xmm9, %xmm1      #  5     0x12  4      OPC=movups_xmm_xmm     
  retq                     #  6     0x16  1      OPC=retq               
                                                                        
.size target, .-target
