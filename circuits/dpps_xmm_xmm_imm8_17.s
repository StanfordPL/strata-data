  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  vbroadcastss %xmm1, %xmm3          #  1     0     5      OPC=vbroadcastss_xmm_xmm  
  callq .move_128_64_xmm3_xmm8_xmm9  #  2     0x5   5      OPC=callq_label           
  mulps %xmm2, %xmm9                 #  3     0xa   4      OPC=mulps_xmm_xmm         
  pandn %xmm1, %xmm1                 #  4     0xe   4      OPC=pandn_xmm_xmm         
  addss %xmm9, %xmm1                 #  5     0x12  5      OPC=addss_xmm_xmm         
  retq                               #  6     0x17  1      OPC=retq                  
                                                                                     
.size target, .-target
