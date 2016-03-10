  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  vbroadcastsd %xmm2, %ymm1           #  1     0     5      OPC=vbroadcastsd_ymm_xmm  
  callq .move_256_128_ymm2_xmm8_xmm9  #  2     0x5   5      OPC=callq_label           
  vmovdqu %xmm9, %xmm8                #  3     0xa   5      OPC=vmovdqu_xmm_xmm       
  callq .move_64_128_xmm8_xmm9_xmm1   #  4     0xf   5      OPC=callq_label           
  retq                                #  5     0x14  1      OPC=retq                  
                                                                                      
.size target, .-target
