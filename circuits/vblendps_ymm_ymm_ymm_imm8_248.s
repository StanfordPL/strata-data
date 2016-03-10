  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  vmovapd %xmm2, %xmm6                            #  1     0     4      OPC=vmovapd_xmm_xmm   
  callq .move_256_128_ymm3_xmm8_xmm9              #  2     0x4   5      OPC=callq_label       
  callq .move_128_256_xmm8_xmm9_ymm1              #  3     0x9   5      OPC=callq_label       
  callq .move_128_64_xmm2_xmm10_xmm11             #  4     0xe   5      OPC=callq_label       
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x13  5      OPC=callq_label       
  unpckhps %xmm3, %xmm1                           #  6     0x18  3      OPC=unpckhps_xmm_xmm  
  movsd %xmm6, %xmm1                              #  7     0x1b  4      OPC=movsd_xmm_xmm     
  retq                                            #  8     0x1f  1      OPC=retq              
                                                                                              
.size target, .-target
