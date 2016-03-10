  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_128_64_xmm3_xmm12_xmm13   #  1     0     5      OPC=callq_label            
  vbroadcastsd %xmm3, %ymm1             #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm   
  callq .move_256_128_ymm2_xmm10_xmm11  #  3     0xa   5      OPC=callq_label            
  callq .move_128_256_xmm12_xmm13_ymm2  #  4     0xf   5      OPC=callq_label            
  vunpcklpd %ymm2, %ymm1, %ymm1         #  5     0x14  4      OPC=vunpcklpd_ymm_ymm_ymm  
  movaps %xmm11, %xmm1                  #  6     0x18  4      OPC=movaps_xmm_xmm         
  retq                                  #  7     0x1c  1      OPC=retq                   
                                                                                         
.size target, .-target
