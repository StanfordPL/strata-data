  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  vpmovsxdq %xmm1, %ymm7               #  1     0     5      OPC=vpmovsxdq_ymm_xmm     
  vmovshdup %ymm7, %ymm13              #  2     0x5   4      OPC=vmovshdup_ymm_ymm     
  vxorps %xmm7, %xmm1, %xmm14          #  3     0x9   4      OPC=vxorps_xmm_xmm_xmm    
  vcvtpd2ps %ymm13, %xmm12             #  4     0xd   5      OPC=vcvtpd2ps_xmm_ymm     
  vmovhlps %xmm12, %xmm14, %xmm13      #  5     0x12  5      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  6     0x17  5      OPC=callq_label           
  retq                                 #  7     0x1c  1      OPC=retq                  
                                                                                       
.size target, .-target
