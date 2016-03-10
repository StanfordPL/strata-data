  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                  #  Line  RIP   Bytes  Opcode              
.target:                                #        0     0      OPC=<label>         
  callq .move_128_64_xmm2_xmm12_xmm13   #  1     0     5      OPC=callq_label     
  callq .move_128_064_xmm2_r8_r9        #  2     0x5   5      OPC=callq_label     
  callq .move_128_256_xmm12_xmm13_ymm3  #  3     0xa   5      OPC=callq_label     
  callq .move_064_128_r8_r9_xmm3        #  4     0xf   5      OPC=callq_label     
  vrcpps %ymm3, %ymm14                  #  5     0x14  4      OPC=vrcpps_ymm_ymm  
  movdqu %xmm14, %xmm1                  #  6     0x18  5      OPC=movdqu_xmm_xmm  
  retq                                  #  7     0x1d  1      OPC=retq            
                                                                                  
.size target, .-target
