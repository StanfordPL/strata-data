  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  callq .move_256_128_ymm2_xmm8_xmm9  #  1     0     5      OPC=callq_label           
  vmovlhps %xmm2, %xmm9, %xmm7        #  2     0x5   4      OPC=vmovlhps_xmm_xmm_xmm  
  vmovhlps %xmm9, %xmm7, %xmm8        #  3     0x9   5      OPC=vmovhlps_xmm_xmm_xmm  
  punpcklqdq %xmm2, %xmm9             #  4     0xe   5      OPC=punpcklqdq_xmm_xmm    
  callq .move_128_256_xmm8_xmm9_ymm1  #  5     0x13  5      OPC=callq_label           
  retq                                #  6     0x18  1      OPC=retq                  
                                                                                      
.size target, .-target
