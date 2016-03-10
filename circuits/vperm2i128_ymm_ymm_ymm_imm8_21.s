  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode               
.target:                                #        0     0      OPC=<label>          
  vmovaps %ymm2, %ymm1                  #  1     0     4      OPC=vmovaps_ymm_ymm  
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x4   5      OPC=callq_label      
  callq .move_256_128_ymm1_xmm8_xmm9    #  3     0x9   5      OPC=callq_label      
  andnps %xmm8, %xmm1                   #  4     0xe   4      OPC=andnps_xmm_xmm   
  orps %xmm11, %xmm1                    #  5     0x12  4      OPC=orps_xmm_xmm     
  retq                                  #  6     0x16  1      OPC=retq             
                                                                                   
.size target, .-target
