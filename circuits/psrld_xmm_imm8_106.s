  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP  Bytes  Opcode                    
.target:                        #        0    0      OPC=<label>               
  vpbroadcastb %xmm1, %ymm8     #  1     0    5      OPC=vpbroadcastb_ymm_xmm  
  vandnpd %ymm8, %ymm8, %ymm12  #  2     0x5  5      OPC=vandnpd_ymm_ymm_ymm   
  movddup %xmm12, %xmm1         #  3     0xa  5      OPC=movddup_xmm_xmm       
  retq                          #  4     0xf  1      OPC=retq                  
                                                                               
.size target, .-target
