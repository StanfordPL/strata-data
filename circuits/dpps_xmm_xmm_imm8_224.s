  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vxorps %xmm4, %xmm4, %xmm10  #  1     0     4      OPC=vxorps_xmm_xmm_xmm  
  vmovups %xmm10, %xmm4        #  2     0x4   5      OPC=vmovups_xmm_xmm     
  vcvtdq2ps %ymm4, %ymm3       #  3     0x9   4      OPC=vcvtdq2ps_ymm_ymm   
  cvtdq2pd %xmm3, %xmm1        #  4     0xd   4      OPC=cvtdq2pd_xmm_xmm    
  retq                         #  5     0x11  1      OPC=retq                
                                                                             
.size target, .-target
