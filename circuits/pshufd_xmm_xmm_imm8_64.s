  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vbroadcastss %xmm2, %ymm8   #  1     0     5      OPC=vbroadcastss_ymm_xmm  
  vpbroadcastd %xmm8, %ymm10  #  2     0x5   5      OPC=vpbroadcastd_ymm_xmm  
  movddup %xmm2, %xmm1        #  3     0xa   4      OPC=movddup_xmm_xmm       
  movsd %xmm10, %xmm1         #  4     0xe   5      OPC=movsd_xmm_xmm         
  retq                        #  5     0x13  1      OPC=retq                  
                                                                              
.size target, .-target
