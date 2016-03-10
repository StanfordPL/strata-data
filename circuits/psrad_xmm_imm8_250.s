  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vpmovsxdq %xmm1, %ymm4   #  1     0     5      OPC=vpmovsxdq_ymm_xmm  
  vmovshdup %ymm4, %ymm14  #  2     0x5   4      OPC=vmovshdup_ymm_ymm  
  vcvtpd2ps %ymm14, %xmm4  #  3     0x9   5      OPC=vcvtpd2ps_xmm_ymm  
  movaps %xmm4, %xmm1      #  4     0xe   3      OPC=movaps_xmm_xmm     
  retq                     #  5     0x11  1      OPC=retq               
                                                                        
.size target, .-target
