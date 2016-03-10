  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_256_128_ymm2_xmm8_xmm9    #  1     0     5      OPC=callq_label           
  callq .move_128_64_xmm2_xmm12_xmm13   #  2     0x5   5      OPC=callq_label           
  vbroadcastsd %xmm9, %ymm9             #  3     0xa   5      OPC=vbroadcastsd_ymm_xmm  
  vmovsd %xmm13, %xmm9, %xmm13          #  4     0xf   5      OPC=vmovsd_xmm_xmm_xmm    
  callq .move_128_256_xmm12_xmm13_ymm1  #  5     0x14  5      OPC=callq_label           
  movddup %xmm9, %xmm1                  #  6     0x19  5      OPC=movddup_xmm_xmm       
  retq                                  #  7     0x1e  1      OPC=retq                  
                                                                                        
.size target, .-target
