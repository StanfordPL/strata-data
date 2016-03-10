  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  callq .move_128_64_xmm3_xmm10_xmm11   #  2     0x5   5      OPC=callq_label            
  vpbroadcastq %xmm3, %ymm1             #  3     0xa   5      OPC=vpbroadcastq_ymm_xmm   
  vmaxpd %ymm1, %ymm1, %ymm15           #  4     0xf   4      OPC=vmaxpd_ymm_ymm_ymm     
  vpbroadcastq %xmm11, %ymm1            #  5     0x13  5      OPC=vpbroadcastq_ymm_xmm   
  vunpckhpd %ymm1, %ymm15, %ymm1        #  6     0x18  4      OPC=vunpckhpd_ymm_ymm_ymm  
  movupd %xmm13, %xmm1                  #  7     0x1c  5      OPC=movupd_xmm_xmm         
  retq                                  #  8     0x21  1      OPC=retq                   
                                                                                         
.size target, .-target
