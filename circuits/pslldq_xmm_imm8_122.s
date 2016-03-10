  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                   
.target:                         #        0     0      OPC=<label>              
  vxorps %xmm13, %xmm13, %xmm8   #  1     0     5      OPC=vxorps_xmm_xmm_xmm   
  vhsubpd %ymm8, %ymm8, %ymm10   #  2     0x5   5      OPC=vhsubpd_ymm_ymm_ymm  
  vsubsd %xmm10, %xmm10, %xmm12  #  3     0xa   5      OPC=vsubsd_xmm_xmm_xmm   
  pmovzxbq %xmm12, %xmm1         #  4     0xf   6      OPC=pmovzxbq_xmm_xmm     
  retq                           #  5     0x15  1      OPC=retq                 
                                                                                
.size target, .-target
