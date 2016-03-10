  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmovups %xmm1, %xmm12        #  1     0     4      OPC=vmovups_xmm_xmm     
  vmovupd %xmm2, %xmm0         #  2     0x4   4      OPC=vmovupd_xmm_xmm     
  pandn %xmm1, %xmm1           #  3     0x8   4      OPC=pandn_xmm_xmm       
  vsubpd %ymm0, %ymm12, %ymm3  #  4     0xc   4      OPC=vsubpd_ymm_ymm_ymm  
  xorps %xmm3, %xmm1           #  5     0x10  3      OPC=xorps_xmm_xmm       
  retq                         #  6     0x13  1      OPC=retq                
                                                                             
.size target, .-target
