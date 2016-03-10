  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                    
.target:                          #        0     0      OPC=<label>               
  vcvtdq2pd %xmm1, %xmm9          #  1     0     4      OPC=vcvtdq2pd_xmm_xmm     
  vmaxss %xmm9, %xmm9, %xmm13     #  2     0x4   5      OPC=vmaxss_xmm_xmm_xmm    
  vmovhlps %xmm1, %xmm13, %xmm12  #  3     0x9   4      OPC=vmovhlps_xmm_xmm_xmm  
  movd %xmm12, %ebx               #  4     0xd   5      OPC=movd_r32_xmm          
  retq                            #  5     0x12  1      OPC=retq                  
                                                                                  
.size target, .-target
