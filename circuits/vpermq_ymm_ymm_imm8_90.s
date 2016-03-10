  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label           
  callq .move_128_64_xmm2_xmm8_xmm9     #  2     0x5   5      OPC=callq_label           
  vminss %xmm13, %xmm13, %xmm12         #  3     0xa   5      OPC=vminss_xmm_xmm_xmm    
  vbroadcastsd %xmm9, %ymm6             #  4     0xf   5      OPC=vbroadcastsd_ymm_xmm  
  vorps %ymm6, %ymm6, %ymm1             #  5     0x14  4      OPC=vorps_ymm_ymm_ymm     
  callq .move_64_128_xmm12_xmm13_xmm1   #  6     0x18  5      OPC=callq_label           
  retq                                  #  7     0x1d  1      OPC=retq                  
                                                                                        
.size target, .-target
