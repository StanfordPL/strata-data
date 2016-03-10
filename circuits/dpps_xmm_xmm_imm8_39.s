  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  vmulps %xmm2, %xmm1, %xmm3                      #  1     0     4      OPC=vmulps_xmm_xmm_xmm    
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label           
  haddps %xmm9, %xmm9                             #  3     0x9   5      OPC=haddps_xmm_xmm        
  vbroadcastss %xmm9, %xmm8                       #  4     0xe   5      OPC=vbroadcastss_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1               #  5     0x13  5      OPC=callq_label           
  retq                                            #  6     0x18  1      OPC=retq                  
                                                                                                  
.size target, .-target
