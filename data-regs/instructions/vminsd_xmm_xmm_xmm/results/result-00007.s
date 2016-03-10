  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vorps %xmm3, %xmm3, %xmm13   #  1     0    4      OPC=vorps_xmm_xmm_xmm   
  vmovsd %xmm13, %xmm2, %xmm0  #  2     0x4  5      OPC=vmovsd_xmm_xmm_xmm  
  vminpd %xmm0, %xmm2, %xmm1   #  3     0x9  4      OPC=vminpd_xmm_xmm_xmm  
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
