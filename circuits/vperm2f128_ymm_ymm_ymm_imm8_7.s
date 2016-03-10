  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vmovdqu %xmm2, %xmm13                 #  1     0     4      OPC=vmovdqu_xmm_xmm     
  callq .move_256_128_ymm3_xmm8_xmm9    #  2     0x4   5      OPC=callq_label         
  vminsd %xmm9, %xmm9, %xmm12           #  3     0x9   5      OPC=vminsd_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm2  #  4     0xe   5      OPC=callq_label         
  vmovupd %ymm2, %ymm1                  #  5     0x13  4      OPC=vmovupd_ymm_ymm     
  retq                                  #  6     0x17  1      OPC=retq                
                                                                                      
.size target, .-target
