  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  vunpckhpd %ymm3, %ymm3, %ymm5        #  1     0     4      OPC=vunpckhpd_ymm_ymm_ymm   
  vunpckhpd %ymm5, %ymm2, %ymm13       #  2     0x4   4      OPC=vunpckhpd_ymm_ymm_ymm   
  callq .move_128_64_xmm2_xmm12_xmm13  #  3     0x8   5      OPC=callq_label             
  vpunpcklwd %ymm5, %ymm13, %ymm1      #  4     0xd   4      OPC=vpunpcklwd_ymm_ymm_ymm  
  retq                                 #  5     0x11  1      OPC=retq                    
                                                                                         
.size target, .-target
