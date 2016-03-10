  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP  Bytes  Opcode                    
.target:                                #        0    0      OPC=<label>               
  vbroadcastsd %xmm2, %ymm1             #  1     0    5      OPC=vbroadcastsd_ymm_xmm  
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x5  5      OPC=callq_label           
  movhlps %xmm11, %xmm1                 #  3     0xa  4      OPC=movhlps_xmm_xmm       
  retq                                  #  4     0xe  1      OPC=retq                  
                                                                                       
.size target, .-target
