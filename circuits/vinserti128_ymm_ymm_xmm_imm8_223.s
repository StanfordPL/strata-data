  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm3_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vbroadcastsd %xmm3, %ymm1            #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm     
  vpbroadcastq %xmm11, %ymm10          #  3     0xa   5      OPC=vpbroadcastq_ymm_xmm     
  vpunpcklqdq %ymm10, %ymm1, %ymm1     #  4     0xf   5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  movups %xmm2, %xmm1                  #  5     0x14  3      OPC=movups_xmm_xmm           
  retq                                 #  6     0x17  1      OPC=retq                     
                                                                                          
.size target, .-target
