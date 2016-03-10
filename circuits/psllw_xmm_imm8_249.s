  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vxorps %xmm1, %xmm1, %xmm9  #  1     0     4      OPC=vxorps_xmm_xmm_xmm  
  vcvtps2dq %xmm9, %xmm2      #  2     0x4   5      OPC=vcvtps2dq_xmm_xmm   
  vmovsldup %ymm2, %ymm8      #  3     0x9   4      OPC=vmovsldup_ymm_ymm   
  cvtpd2dq %xmm8, %xmm1       #  4     0xd   5      OPC=cvtpd2dq_xmm_xmm    
  retq                        #  5     0x12  1      OPC=retq                
                                                                            
.size target, .-target
