  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vpbroadcastd %xmm2, %xmm4         #  1     0     5      OPC=vpbroadcastd_xmm_xmm     
  vmovdqa %ymm2, %ymm15             #  2     0x5   4      OPC=vmovdqa_ymm_ymm          
  vunpcklps %ymm2, %ymm4, %ymm12    #  3     0x9   4      OPC=vunpcklps_ymm_ymm_ymm    
  movups %xmm15, %xmm3              #  4     0xd   4      OPC=movups_xmm_xmm           
  vpunpckldq %ymm3, %ymm12, %ymm4   #  5     0x11  4      OPC=vpunpckldq_ymm_ymm_ymm   
  vpunpckhqdq %ymm15, %ymm4, %ymm1  #  6     0x15  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                              #  7     0x1a  1      OPC=retq                     
                                                                                       
.size target, .-target
