  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP   Bytes  Opcode                    
.target:                        #        0     0      OPC=<label>               
  vandnps %xmm1, %xmm1, %xmm15  #  1     0     4      OPC=vandnps_xmm_xmm_xmm   
  vpbroadcastb %xmm15, %xmm4    #  2     0x4   5      OPC=vpbroadcastb_xmm_xmm  
  vmulps %ymm4, %ymm4, %ymm12   #  3     0x9   4      OPC=vmulps_ymm_ymm_ymm    
  movdqa %xmm12, %xmm1          #  4     0xd   5      OPC=movdqa_xmm_xmm        
  hsubpd %xmm4, %xmm1           #  5     0x12  4      OPC=hsubpd_xmm_xmm        
  retq                          #  6     0x16  1      OPC=retq                  
                                                                                
.size target, .-target
