  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP  Bytes  Opcode                    
.target:                         #        0    0      OPC=<label>               
  vmovlhps %xmm2, %xmm2, %xmm13  #  1     0    4      OPC=vmovlhps_xmm_xmm_xmm  
  vcvtpd2ps %ymm13, %xmm3        #  2     0x4  5      OPC=vcvtpd2ps_xmm_ymm     
  movss %xmm3, %xmm1             #  3     0x9  4      OPC=movss_xmm_xmm         
  retq                           #  4     0xd  1      OPC=retq                  
                                                                                
.size target, .-target
