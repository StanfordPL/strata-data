  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                 
.target:                                #        0     0      OPC=<label>            
  vcvtps2pd %xmm1, %xmm3                #  1     0     4      OPC=vcvtps2pd_xmm_xmm  
  callq .move_256_128_ymm3_xmm12_xmm13  #  2     0x4   5      OPC=callq_label        
  callq .move_64_128_xmm12_xmm13_xmm1   #  3     0x9   5      OPC=callq_label        
  unpckhps %xmm13, %xmm1                #  4     0xe   4      OPC=unpckhps_xmm_xmm   
  retq                                  #  5     0x12  1      OPC=retq               
                                                                                     
.size target, .-target
