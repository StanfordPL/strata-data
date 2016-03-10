  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                    
.target:                          #        0     0      OPC=<label>               
  vzeroall                        #  1     0     3      OPC=vzeroall              
  callq .move_128_064_xmm3_r8_r9  #  2     0x3   5      OPC=callq_label           
  incb %r9b                       #  3     0x8   3      OPC=incb_r8               
  subq %r9, %r8                   #  4     0xb   3      OPC=subq_r64_r64          
  callq .move_064_128_r8_r9_xmm1  #  5     0xe   5      OPC=callq_label           
  vpbroadcastd %xmm1, %ymm1       #  6     0x13  5      OPC=vpbroadcastd_ymm_xmm  
  retq                            #  7     0x18  1      OPC=retq                  
                                                                                  
.size target, .-target
