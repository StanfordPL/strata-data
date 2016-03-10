  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vpbroadcastq %xmm2, %ymm13            #  1     0     5      OPC=vpbroadcastq_ymm_xmm   
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label            
  vunpckhpd %ymm2, %ymm13, %ymm1        #  3     0xa   4      OPC=vunpckhpd_ymm_ymm_ymm  
  movlhps %xmm1, %xmm1                  #  4     0xe   3      OPC=movlhps_xmm_xmm        
  retq                                  #  5     0x11  1      OPC=retq                   
                                                                                         
.size target, .-target
