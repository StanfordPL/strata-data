  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                      
.target:                           #        0    0      OPC=<label>                 
  vpunpckldq %xmm3, %xmm2, %xmm10  #  1     0    4      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovlhps %xmm10, %xmm1, %xmm4    #  2     0x4  5      OPC=vmovlhps_xmm_xmm_xmm    
  vunpckhpd %xmm2, %xmm4, %xmm1    #  3     0x9  4      OPC=vunpckhpd_xmm_xmm_xmm   
  retq                             #  4     0xd  1      OPC=retq                    
                                                                                    
.size target, .-target
