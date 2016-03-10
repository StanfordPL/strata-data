  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpbroadcastq %xmm2, %ymm7        #  1     0     5      OPC=vpbroadcastq_ymm_xmm     
  punpckhdq %xmm2, %xmm7           #  2     0x5   4      OPC=punpckhdq_xmm_xmm        
  vpbroadcastq %xmm1, %ymm2        #  3     0x9   5      OPC=vpbroadcastq_ymm_xmm     
  vunpckhps %xmm1, %xmm2, %xmm5    #  4     0xe   4      OPC=vunpckhps_xmm_xmm_xmm    
  vpunpckhqdq %xmm7, %xmm5, %xmm6  #  5     0x12  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovlhps %xmm7, %xmm5, %xmm7     #  6     0x16  4      OPC=vmovlhps_xmm_xmm_xmm     
  vsubps %ymm6, %ymm7, %ymm11      #  7     0x1a  4      OPC=vsubps_ymm_ymm_ymm       
  movdqu %xmm11, %xmm1             #  8     0x1e  5      OPC=movdqu_xmm_xmm           
  retq                             #  9     0x23  1      OPC=retq                     
                                                                                      
.size target, .-target
