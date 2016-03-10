  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  vmulss %xmm2, %xmm4, %xmm11                   #  2     0x5   4      OPC=vmulss_xmm_xmm_xmm    
  vpbroadcastq %xmm11, %ymm3                    #  3     0x9   5      OPC=vpbroadcastq_ymm_xmm  
  haddps %xmm3, %xmm11                          #  4     0xe   5      OPC=haddps_xmm_xmm        
  movsldup %xmm11, %xmm1                        #  5     0x13  5      OPC=movsldup_xmm_xmm      
  retq                                          #  6     0x18  1      OPC=retq                  
                                                                                                
.size target, .-target
