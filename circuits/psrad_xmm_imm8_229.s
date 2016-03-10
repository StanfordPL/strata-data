  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                      #  Line  RIP   Bytes  Opcode                 
.target:                    #        0     0      OPC=<label>            
  vmovdqu %xmm1, %xmm14     #  1     0     4      OPC=vmovdqu_xmm_xmm    
  vpmovsxdq %xmm14, %ymm4   #  2     0x4   5      OPC=vpmovsxdq_ymm_xmm  
  vmovshdup %ymm4, %ymm15   #  3     0x9   4      OPC=vmovshdup_ymm_ymm  
  vcvtpd2ps %ymm15, %xmm12  #  4     0xd   5      OPC=vcvtpd2ps_xmm_ymm  
  movapd %xmm12, %xmm1      #  5     0x12  5      OPC=movapd_xmm_xmm     
  retq                      #  6     0x17  1      OPC=retq               
                                                                         
.size target, .-target
