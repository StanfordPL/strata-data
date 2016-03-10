  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label          
  unpckhpd %xmm7, %xmm6                         #  2     0x5   4      OPC=unpckhpd_xmm_xmm     
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  3     0x9   5      OPC=callq_label          
  vpmovzxdq %xmm2, %ymm3                        #  4     0xe   5      OPC=vpmovzxdq_ymm_xmm    
  vandnps %ymm3, %ymm3, %ymm15                  #  5     0x13  4      OPC=vandnps_ymm_ymm_ymm  
  sqrtsd %xmm15, %xmm1                          #  6     0x17  5      OPC=sqrtsd_xmm_xmm       
  retq                                          #  7     0x1c  1      OPC=retq                 
                                                                                               
.size target, .-target
