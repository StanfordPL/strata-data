  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP  Bytes  Opcode                      
.target:                          #        0    0      OPC=<label>                 
  vunpckhps %ymm3, %ymm2, %ymm13  #  1     0    4      OPC=vunpckhps_ymm_ymm_ymm   
  vpunpckhdq %xmm3, %xmm2, %xmm1  #  2     0x4  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vorps %ymm1, %ymm13, %ymm1      #  3     0x8  4      OPC=vorps_ymm_ymm_ymm       
  retq                            #  4     0xc  1      OPC=retq                    
                                                                                   
.size target, .-target
