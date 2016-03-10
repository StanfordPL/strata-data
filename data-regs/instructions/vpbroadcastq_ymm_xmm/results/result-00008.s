  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vmovups %xmm2, %xmm0                 #  2     0x5   4      OPC=vmovups_xmm_xmm       
  movddup %xmm10, %xmm9                #  3     0x9   5      OPC=movddup_xmm_xmm       
  vmovlhps %xmm0, %xmm10, %xmm8        #  4     0xe   4      OPC=vmovlhps_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1   #  5     0x12  5      OPC=callq_label           
  retq                                 #  6     0x17  1      OPC=retq                  
                                                                                       
.size target, .-target
