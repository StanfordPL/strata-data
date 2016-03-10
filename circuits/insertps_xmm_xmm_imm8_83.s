  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                    
.target:                       #        0    0      OPC=<label>               
  vpbroadcastd %xmm1, %ymm9    #  1     0    5      OPC=vpbroadcastd_ymm_xmm  
  vandnps %ymm9, %ymm9, %ymm4  #  2     0x5  5      OPC=vandnps_ymm_ymm_ymm   
  cvtss2sd %xmm4, %xmm1        #  3     0xa  4      OPC=cvtss2sd_xmm_xmm      
  retq                         #  4     0xe  1      OPC=retq                  
                                                                              
.size target, .-target
