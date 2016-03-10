  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label             
  vbroadcastss %xmm9, %ymm0          #  2     0x5   5      OPC=vbroadcastss_ymm_xmm    
  vunpckhps %xmm3, %xmm3, %xmm7      #  3     0xa   4      OPC=vunpckhps_xmm_xmm_xmm   
  movss %xmm3, %xmm2                 #  4     0xe   4      OPC=movss_xmm_xmm           
  vpunpckhdq %ymm7, %ymm0, %ymm4     #  5     0x12  4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vmovlhps %xmm4, %xmm2, %xmm1       #  6     0x16  4      OPC=vmovlhps_xmm_xmm_xmm    
  retq                               #  7     0x1a  1      OPC=retq                    
                                                                                       
.size target, .-target
