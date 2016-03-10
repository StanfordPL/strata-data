  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vpbroadcastd %xmm2, %xmm14         #  1     0     5      OPC=vpbroadcastd_xmm_xmm     
  vbroadcastsd %xmm2, %ymm12         #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm     
  vpunpcklqdq %ymm12, %ymm14, %ymm5  #  3     0xa   5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vunpcklps %ymm5, %ymm12, %ymm14    #  4     0xf   4      OPC=vunpcklps_ymm_ymm_ymm    
  movapd %xmm14, %xmm1               #  5     0x13  5      OPC=movapd_xmm_xmm           
  retq                               #  6     0x18  1      OPC=retq                     
                                                                                        
.size target, .-target
