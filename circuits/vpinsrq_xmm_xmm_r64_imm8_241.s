  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vandps %xmm2, %xmm2, %xmm3     #  1     0    4      OPC=vandps_xmm_xmm_xmm     
  vmovq %rbx, %xmm2              #  2     0x4  5      OPC=vmovq_xmm_r64          
  vunpcklpd %xmm2, %xmm3, %xmm1  #  3     0x9  4      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                           #  4     0xd  1      OPC=retq                   
                                                                                 
.size target, .-target
