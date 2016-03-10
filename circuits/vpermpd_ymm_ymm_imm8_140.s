  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vbroadcastsd %xmm2, %ymm12            #  1     0     5      OPC=vbroadcastsd_ymm_xmm   
  vunpcklpd %ymm12, %ymm2, %ymm7        #  2     0x5   5      OPC=vunpcklpd_ymm_ymm_ymm  
  callq .move_256_128_ymm2_xmm10_xmm11  #  3     0xa   5      OPC=callq_label            
  vunpcklpd %ymm2, %ymm12, %ymm1        #  4     0xf   4      OPC=vunpcklpd_ymm_ymm_ymm  
  vmovhlps %xmm7, %xmm11, %xmm2         #  5     0x13  4      OPC=vmovhlps_xmm_xmm_xmm   
  movupd %xmm2, %xmm1                   #  6     0x17  4      OPC=movupd_xmm_xmm         
  retq                                  #  7     0x1b  1      OPC=retq                   
                                                                                         
.size target, .-target
