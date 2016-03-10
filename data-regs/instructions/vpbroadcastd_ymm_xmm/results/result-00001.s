  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  vbroadcastss %xmm2, %xmm1             #  1     0     5      OPC=vbroadcastss_xmm_xmm  
  callq .move_256_128_ymm1_xmm10_xmm11  #  2     0x5   5      OPC=callq_label           
  callq .move_64_128_xmm10_xmm11_xmm2   #  3     0xa   5      OPC=callq_label           
  movddup %xmm2, %xmm11                 #  4     0xf   5      OPC=movddup_xmm_xmm       
  callq .move_128_256_xmm10_xmm11_ymm1  #  5     0x14  5      OPC=callq_label           
  retq                                  #  6     0x19  1      OPC=retq                  
                                                                                        
.size target, .-target
