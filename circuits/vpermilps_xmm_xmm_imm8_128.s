  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vpbroadcastd %xmm2, %ymm3        #  1     0     5      OPC=vpbroadcastd_ymm_xmm    
  vmovdqu %xmm2, %xmm14            #  2     0x5   4      OPC=vmovdqu_xmm_xmm         
  vpunpckhdq %xmm14, %xmm3, %xmm9  #  3     0x9   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vbroadcastsd %xmm9, %ymm0        #  4     0xe   5      OPC=vbroadcastsd_ymm_xmm    
  vmovhlps %xmm3, %xmm0, %xmm1     #  5     0x13  4      OPC=vmovhlps_xmm_xmm_xmm    
  retq                             #  6     0x17  1      OPC=retq                    
                                                                                     
.size target, .-target
