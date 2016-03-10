  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                       #  Line  RIP   Bytes  Opcode                    
.target:                     #        0     0      OPC=<label>               
  hsubps %xmm3, %xmm2        #  1     0     4      OPC=hsubps_xmm_xmm        
  vbroadcastss %xmm2, %xmm0  #  2     0x4   5      OPC=vbroadcastss_xmm_xmm  
  vmovapd %ymm0, %ymm1       #  3     0x9   4      OPC=vmovapd_ymm_ymm       
  movupd %xmm2, %xmm1        #  4     0xd   4      OPC=movupd_xmm_xmm        
  retq                       #  5     0x11  1      OPC=retq                  
                                                                             
.size target, .-target
