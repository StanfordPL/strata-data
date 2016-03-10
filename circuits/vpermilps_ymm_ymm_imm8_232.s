  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vunpckhpd %ymm2, %ymm2, %ymm3     #  1     0     4      OPC=vunpckhpd_ymm_ymm_ymm    
  vpbroadcastb %xmm2, %xmm12        #  2     0x4   5      OPC=vpbroadcastb_xmm_xmm     
  vunpcklps %ymm3, %ymm2, %ymm14    #  3     0x9   4      OPC=vunpcklps_ymm_ymm_ymm    
  vpunpckhqdq %ymm12, %ymm3, %ymm5  #  4     0xd   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vpunpcklqdq %ymm5, %ymm14, %ymm1  #  5     0x12  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                              #  6     0x16  1      OPC=retq                     
                                                                                       
.size target, .-target
