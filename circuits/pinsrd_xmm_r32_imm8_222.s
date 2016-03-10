  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmovd %ebx, %xmm9               #  1     0     4      OPC=vmovd_xmm_r32           
  vpbroadcastq %xmm9, %ymm12      #  2     0x4   5      OPC=vpbroadcastq_ymm_xmm    
  vpunpckhdq %xmm9, %xmm1, %xmm8  #  3     0x9   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpckhps %ymm8, %ymm12, %ymm2  #  4     0xe   5      OPC=vunpckhps_ymm_ymm_ymm   
  movlhps %xmm2, %xmm1            #  5     0x13  3      OPC=movlhps_xmm_xmm         
  retq                            #  6     0x16  1      OPC=retq                    
                                                                                    
.size target, .-target
