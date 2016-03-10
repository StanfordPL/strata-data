  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  vpbroadcastd %xmm1, %ymm3          #  1     0     5      OPC=vpbroadcastd_ymm_xmm  
  callq .move_128_64_xmm3_xmm8_xmm9  #  2     0x5   5      OPC=callq_label           
  movups %xmm9, %xmm4                #  3     0xa   4      OPC=movups_xmm_xmm        
  vxorpd %xmm4, %xmm8, %xmm7         #  4     0xe   4      OPC=vxorpd_xmm_xmm_xmm    
  movddup %xmm7, %xmm1               #  5     0x12  4      OPC=movddup_xmm_xmm       
  retq                               #  6     0x16  1      OPC=retq                  
                                                                                     
.size target, .-target
