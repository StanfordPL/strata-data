  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmovups %xmm3, %xmm1         #  1     0    4      OPC=vmovups_xmm_xmm     
  vorps %xmm2, %xmm2, %xmm14   #  2     0x4  4      OPC=vorps_xmm_xmm_xmm   
  vsubpd %ymm1, %ymm14, %ymm1  #  3     0x8  4      OPC=vsubpd_ymm_ymm_ymm  
  retq                         #  4     0xc  1      OPC=retq                
                                                                            
.size target, .-target
