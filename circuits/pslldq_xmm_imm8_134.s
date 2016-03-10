  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                    
.target:                       #        0     0      OPC=<label>               
  vandnpd %xmm1, %xmm1, %xmm5  #  1     0     4      OPC=vandnpd_xmm_xmm_xmm   
  vpbroadcastd %xmm5, %ymm10   #  2     0x4   5      OPC=vpbroadcastd_ymm_xmm  
  vmovupd %ymm10, %ymm5        #  3     0x9   5      OPC=vmovupd_ymm_ymm       
  movddup %xmm5, %xmm1         #  4     0xe   4      OPC=movddup_xmm_xmm       
  retq                         #  5     0x12  1      OPC=retq                  
                                                                               
.size target, .-target
