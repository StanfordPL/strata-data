  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm3_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vbroadcastsd %xmm3, %ymm1            #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm     
  movupd %xmm2, %xmm9                  #  3     0xa   5      OPC=movupd_xmm_xmm           
  vbroadcastsd %xmm13, %ymm8           #  4     0xf   5      OPC=vbroadcastsd_ymm_xmm     
  vpunpckhqdq %ymm8, %ymm1, %ymm1      #  5     0x14  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movups %xmm9, %xmm1                  #  6     0x19  4      OPC=movups_xmm_xmm           
  retq                                 #  7     0x1d  1      OPC=retq                     
                                                                                          
.size target, .-target
