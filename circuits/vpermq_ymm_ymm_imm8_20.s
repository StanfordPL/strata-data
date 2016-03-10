  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  vmovaps %ymm2, %ymm10                 #  1     0     4      OPC=vmovaps_ymm_ymm       
  vpbroadcastq %xmm2, %ymm0             #  2     0x4   5      OPC=vpbroadcastq_ymm_xmm  
  vmovhlps %xmm2, %xmm0, %xmm8          #  3     0x9   4      OPC=vmovhlps_xmm_xmm_xmm  
  vmovups %ymm8, %ymm11                 #  4     0xd   5      OPC=vmovups_ymm_ymm       
  callq .move_128_256_xmm10_xmm11_ymm1  #  5     0x12  5      OPC=callq_label           
  retq                                  #  6     0x17  1      OPC=retq                  
                                                                                        
.size target, .-target
