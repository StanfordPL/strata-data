  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vmovddup %xmm1, %xmm9                #  2     0x5   4      OPC=vmovddup_xmm_xmm        
  vunpckhps %xmm11, %xmm9, %xmm1       #  3     0x9   5      OPC=vunpckhps_xmm_xmm_xmm   
  vpunpckhdq %ymm1, %ymm1, %ymm9       #  4     0xe   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  movd %xmm9, %ebx                     #  5     0x12  5      OPC=movd_r32_xmm            
  retq                                 #  6     0x17  1      OPC=retq                    
                                                                                         
.size target, .-target
