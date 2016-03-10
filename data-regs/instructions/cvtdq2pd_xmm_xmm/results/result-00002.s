  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                       #  Line  RIP  Bytes  Opcode                 
.target:                     #        0    0      OPC=<label>            
  vorpd %xmm2, %xmm2, %xmm3  #  1     0    4      OPC=vorpd_xmm_xmm_xmm  
  vcvtdq2pd %ymm3, %ymm5     #  2     0x4  4      OPC=vcvtdq2pd_ymm_ymm  
  movaps %xmm5, %xmm1        #  3     0x8  3      OPC=movaps_xmm_xmm     
  retq                       #  4     0xb  1      OPC=retq               
                                                                         
.size target, .-target
