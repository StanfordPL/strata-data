  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vpbroadcastb %xmm2, %ymm8   #  1     0     5      OPC=vpbroadcastb_ymm_xmm  
  divpd %xmm3, %xmm2          #  2     0x5   4      OPC=divpd_xmm_xmm         
  vmovapd %xmm2, %xmm0        #  3     0x9   4      OPC=vmovapd_xmm_xmm       
  vmaxss %xmm8, %xmm2, %xmm1  #  4     0xd   5      OPC=vmaxss_xmm_xmm_xmm    
  movupd %xmm0, %xmm1         #  5     0x12  4      OPC=movupd_xmm_xmm        
  retq                        #  6     0x16  1      OPC=retq                  
                                                                              
.size target, .-target
