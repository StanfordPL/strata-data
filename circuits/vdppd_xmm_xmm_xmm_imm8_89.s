  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vxorps %xmm0, %xmm0, %xmm1       #  1     0    4      OPC=vxorps_xmm_xmm_xmm       
  vfmsub132sd %xmm3, %xmm1, %xmm2  #  2     0x4  5      OPC=vfmsub132sd_xmm_xmm_xmm  
  addsd %xmm2, %xmm1               #  3     0x9  4      OPC=addsd_xmm_xmm            
  retq                             #  4     0xd  1      OPC=retq                     
                                                                                     
.size target, .-target
