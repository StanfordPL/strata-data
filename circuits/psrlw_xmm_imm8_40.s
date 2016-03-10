  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                    
.target:                       #        0    0      OPC=<label>               
  vpxor %xmm11, %xmm11, %xmm2  #  1     0    5      OPC=vpxor_xmm_xmm_xmm     
  vbroadcastss %xmm2, %ymm10   #  2     0x5  5      OPC=vbroadcastss_ymm_xmm  
  movddup %xmm10, %xmm1        #  3     0xa  5      OPC=movddup_xmm_xmm       
  retq                         #  4     0xf  1      OPC=retq                  
                                                                              
.size target, .-target
