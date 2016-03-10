  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP  Bytes  Opcode                   
.target:                        #        0    0      OPC=<label>              
  vpxor %xmm2, %xmm2, %xmm2     #  1     0    4      OPC=vpxor_xmm_xmm_xmm    
  vhaddps %ymm2, %ymm2, %ymm14  #  2     0x4  4      OPC=vhaddps_ymm_ymm_ymm  
  pmovsxdq %xmm14, %xmm1        #  3     0x8  6      OPC=pmovsxdq_xmm_xmm     
  retq                          #  4     0xe  1      OPC=retq                 
                                                                              
.size target, .-target
