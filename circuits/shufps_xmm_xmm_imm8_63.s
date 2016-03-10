  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vmovshdup %xmm1, %xmm13        #  1     0     4      OPC=vmovshdup_xmm_xmm      
  vpbroadcastd %xmm2, %ymm15     #  2     0x4   5      OPC=vpbroadcastd_ymm_xmm   
  vmovups %ymm15, %ymm8          #  3     0x9   5      OPC=vmovups_ymm_ymm        
  vunpckhps %xmm8, %xmm2, %xmm0  #  4     0xe   5      OPC=vunpckhps_xmm_xmm_xmm  
  punpckhqdq %xmm0, %xmm13       #  5     0x13  5      OPC=punpckhqdq_xmm_xmm     
  movdqa %xmm13, %xmm1           #  6     0x18  5      OPC=movdqa_xmm_xmm         
  retq                           #  7     0x1d  1      OPC=retq                   
                                                                                  
.size target, .-target
