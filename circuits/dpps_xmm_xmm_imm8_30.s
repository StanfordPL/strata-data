  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  vxorps %ymm0, %ymm0, %ymm6           #  1     0     4      OPC=vxorps_ymm_ymm_ymm      
  vcvtpd2ps %ymm6, %xmm3               #  2     0x4   4      OPC=vcvtpd2ps_xmm_ymm       
  vmulps %xmm2, %xmm1, %xmm11          #  3     0x8   4      OPC=vmulps_xmm_xmm_xmm      
  vaddps %ymm11, %ymm6, %ymm7          #  4     0xc   5      OPC=vaddps_ymm_ymm_ymm      
  vpunpckldq %xmm7, %xmm3, %xmm12      #  5     0x11  4      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovshdup %ymm12, %ymm13             #  6     0x15  5      OPC=vmovshdup_ymm_ymm       
  callq .move_64_128_xmm12_xmm13_xmm1  #  7     0x1a  5      OPC=callq_label             
  retq                                 #  8     0x1f  1      OPC=retq                    
                                                                                         
.size target, .-target
