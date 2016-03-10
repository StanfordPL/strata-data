  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vpbroadcastq %xmm13, %ymm9            #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm     
  vpunpckhqdq %ymm9, %ymm2, %ymm1       #  3     0xa   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_128_256_xmm12_xmm13_ymm3  #  4     0xf   5      OPC=callq_label              
  movsd %xmm3, %xmm1                    #  5     0x14  4      OPC=movsd_xmm_xmm            
  retq                                  #  6     0x18  1      OPC=retq                     
                                                                                           
.size target, .-target
