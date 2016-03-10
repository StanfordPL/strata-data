  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vfmsub132ps %xmm11, %xmm11, %xmm10    #  2     0x5   5      OPC=vfmsub132ps_xmm_xmm_xmm  
  vmovhlps %xmm2, %xmm10, %xmm8         #  3     0xa   4      OPC=vmovhlps_xmm_xmm_xmm     
  vmovlhps %xmm11, %xmm8, %xmm13        #  4     0xe   5      OPC=vmovlhps_xmm_xmm_xmm     
  vpor %ymm13, %ymm13, %ymm12           #  5     0x13  5      OPC=vpor_ymm_ymm_ymm         
  callq .move_128_256_xmm12_xmm13_ymm1  #  6     0x18  5      OPC=callq_label              
  retq                                  #  7     0x1d  1      OPC=retq                     
                                                                                           
.size target, .-target
