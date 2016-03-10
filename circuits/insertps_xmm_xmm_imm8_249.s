  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  vandnps %xmm2, %xmm2, %xmm3                   #  1     0     4      OPC=vandnps_xmm_xmm_xmm  
  callq .move_256_128_ymm3_xmm12_xmm13          #  2     0x4   5      OPC=callq_label          
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  3     0x9   5      OPC=callq_label          
  sqrtss %xmm13, %xmm1                          #  4     0xe   5      OPC=sqrtss_xmm_xmm       
  movlhps %xmm6, %xmm1                          #  5     0x13  3      OPC=movlhps_xmm_xmm      
  retq                                          #  6     0x16  1      OPC=retq                 
                                                                                               
.size target, .-target
