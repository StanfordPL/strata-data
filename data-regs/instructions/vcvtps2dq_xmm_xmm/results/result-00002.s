  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP  Bytes  Opcode                  
.target:                        #        0    0      OPC=<label>             
  vcvtps2pd %xmm2, %ymm1        #  1     0    4      OPC=vcvtps2pd_ymm_xmm   
  vcvtpd2dq %ymm1, %xmm14       #  2     0x4  4      OPC=vcvtpd2dq_xmm_ymm   
  vmaxps %xmm14, %xmm14, %xmm1  #  3     0x8  5      OPC=vmaxps_xmm_xmm_xmm  
  retq                          #  4     0xd  1      OPC=retq                
                                                                             
.size target, .-target
