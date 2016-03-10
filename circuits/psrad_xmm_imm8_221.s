  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  vpmovsxdq %xmm1, %ymm5  #  1     0     5      OPC=vpmovsxdq_ymm_xmm  
  vmovshdup %ymm5, %ymm4  #  2     0x5   4      OPC=vmovshdup_ymm_ymm  
  vcvtpd2ps %ymm4, %xmm8  #  3     0x9   4      OPC=vcvtpd2ps_xmm_ymm  
  vmovaps %xmm8, %xmm9    #  4     0xd   5      OPC=vmovaps_xmm_xmm    
  movapd %xmm9, %xmm1     #  5     0x12  5      OPC=movapd_xmm_xmm     
  retq                    #  6     0x17  1      OPC=retq               
                                                                       
.size target, .-target
