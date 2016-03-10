  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                    
.target:                       #        0     0      OPC=<label>               
  vpbroadcastb %xmm2, %xmm1    #  1     0     5      OPC=vpbroadcastb_xmm_xmm  
  vbroadcastss %xmm1, %ymm11   #  2     0x5   5      OPC=vbroadcastss_ymm_xmm  
  vmovsldup %xmm1, %xmm4       #  3     0xa   4      OPC=vmovsldup_xmm_xmm     
  xorpd %xmm1, %xmm4           #  4     0xe   4      OPC=xorpd_xmm_xmm         
  vsubpd %ymm4, %ymm11, %ymm1  #  5     0x12  4      OPC=vsubpd_ymm_ymm_ymm    
  retq                         #  6     0x16  1      OPC=retq                  
                                                                               
.size target, .-target
