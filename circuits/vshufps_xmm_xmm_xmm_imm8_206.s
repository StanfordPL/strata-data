  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                      
.target:                          #        0    0      OPC=<label>                 
  vpbroadcastd %xmm3, %ymm0       #  1     0    5      OPC=vpbroadcastd_ymm_xmm    
  vpunpckhdq %xmm3, %xmm0, %xmm3  #  2     0x5  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovhlps %xmm2, %xmm3, %xmm1    #  3     0x9  4      OPC=vmovhlps_xmm_xmm_xmm    
  retq                            #  4     0xd  1      OPC=retq                    
                                                                                   
.size target, .-target
