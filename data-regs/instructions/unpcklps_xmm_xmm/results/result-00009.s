  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  vbroadcastsd %xmm2, %ymm0            #  1     0     5      OPC=vbroadcastsd_ymm_xmm  
  callq .move_128_64_xmm1_xmm12_xmm13  #  2     0x5   5      OPC=callq_label           
  movlhps %xmm12, %xmm1                #  3     0xa   4      OPC=movlhps_xmm_xmm       
  unpckhps %xmm0, %xmm1                #  4     0xe   3      OPC=unpckhps_xmm_xmm      
  retq                                 #  5     0x11  1      OPC=retq                  
                                                                                       
.size target, .-target
