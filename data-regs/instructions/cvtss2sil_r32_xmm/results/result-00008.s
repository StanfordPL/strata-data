  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vmaxss %xmm1, %xmm1, %xmm1  #  1     0     4      OPC=vmaxss_xmm_xmm_xmm  
  vcvtps2dq %ymm1, %ymm7      #  2     0x4   4      OPC=vcvtps2dq_ymm_ymm   
  vcvtdq2ps %xmm7, %xmm4      #  3     0x8   4      OPC=vcvtdq2ps_xmm_xmm   
  cvttss2sil %xmm4, %ebx      #  4     0xc   4      OPC=cvttss2sil_r32_xmm  
  retq                        #  5     0x10  1      OPC=retq                
                                                                            
.size target, .-target
