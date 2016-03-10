  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  movups %xmm2, %xmm6                 #  1     0     3      OPC=movups_xmm_xmm           
  vpbroadcastq %xmm6, %ymm6           #  2     0x3   5      OPC=vpbroadcastq_ymm_xmm     
  callq .move_256_128_ymm2_xmm8_xmm9  #  3     0x8   5      OPC=callq_label              
  vpunpcklqdq %ymm2, %ymm6, %ymm1     #  4     0xd   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  movhlps %xmm9, %xmm1                #  5     0x11  4      OPC=movhlps_xmm_xmm          
  retq                                #  6     0x15  1      OPC=retq                     
                                                                                         
.size target, .-target
