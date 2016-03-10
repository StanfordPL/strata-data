  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  vpbroadcastq %xmm2, %xmm3          #  1     0     5      OPC=vpbroadcastq_xmm_xmm  
  callq .move_128_64_xmm1_xmm8_xmm9  #  2     0x5   5      OPC=callq_label           
  movups %xmm3, %xmm10               #  3     0xa   4      OPC=movups_xmm_xmm        
  addpd %xmm10, %xmm8                #  4     0xe   5      OPC=addpd_xmm_xmm         
  callq .move_64_128_xmm8_xmm9_xmm1  #  5     0x13  5      OPC=callq_label           
  retq                               #  6     0x18  1      OPC=retq                  
                                                                                     
.size target, .-target
