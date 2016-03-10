  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vbroadcastss %xmm2, %ymm1        #  1     0     5      OPC=vbroadcastss_ymm_xmm    
  vrsqrtss %xmm2, %xmm2, %xmm9     #  2     0x5   4      OPC=vrsqrtss_xmm_xmm_xmm    
  vpunpckhdq %ymm1, %ymm9, %ymm11  #  3     0x9   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vpbroadcastq %xmm11, %ymm2       #  4     0xd   5      OPC=vpbroadcastq_ymm_xmm    
  vunpckhpd %xmm2, %xmm11, %xmm1   #  5     0x12  4      OPC=vunpckhpd_xmm_xmm_xmm   
  retq                             #  6     0x16  1      OPC=retq                    
                                                                                     
.size target, .-target
