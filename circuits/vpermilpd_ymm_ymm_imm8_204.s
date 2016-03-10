  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vorps %ymm2, %ymm2, %ymm5            #  1     0     4      OPC=vorps_ymm_ymm_ymm        
  callq .move_128_64_xmm2_xmm10_xmm11  #  2     0x4   5      OPC=callq_label              
  vandpd %xmm11, %xmm11, %xmm15        #  3     0x9   5      OPC=vandpd_xmm_xmm_xmm       
  vpunpckhqdq %ymm15, %ymm5, %ymm8     #  4     0xe   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_128_64_xmm2_xmm8_xmm9    #  5     0x13  5      OPC=callq_label              
  vmovddup %ymm8, %ymm1                #  6     0x18  5      OPC=vmovddup_ymm_ymm         
  retq                                 #  7     0x1d  1      OPC=retq                     
                                                                                          
.size target, .-target
