  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vpbroadcastq %xmm2, %ymm11            #  1     0     5      OPC=vpbroadcastq_ymm_xmm   
  vmovddup %ymm2, %ymm10                #  2     0x5   4      OPC=vmovddup_ymm_ymm       
  callq .move_256_128_ymm2_xmm10_xmm11  #  3     0x9   5      OPC=callq_label            
  vunpckhpd %ymm10, %ymm11, %ymm1       #  4     0xe   5      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                                  #  5     0x13  1      OPC=retq                   
                                                                                         
.size target, .-target
