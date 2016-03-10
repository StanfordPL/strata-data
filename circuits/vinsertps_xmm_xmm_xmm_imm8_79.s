  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vbroadcastsd %xmm1, %ymm4       #  1     0     5      OPC=vbroadcastsd_ymm_xmm   
  vaddsubpd %xmm1, %xmm4, %xmm15  #  2     0x5   4      OPC=vaddsubpd_xmm_xmm_xmm  
  vandnps %ymm15, %ymm15, %ymm13  #  3     0x9   5      OPC=vandnps_ymm_ymm_ymm    
  vaddpd %xmm13, %xmm13, %xmm6    #  4     0xe   5      OPC=vaddpd_xmm_xmm_xmm     
  vmovshdup %xmm6, %xmm1          #  5     0x13  4      OPC=vmovshdup_xmm_xmm      
  retq                            #  6     0x17  1      OPC=retq                   
                                                                                   
.size target, .-target
