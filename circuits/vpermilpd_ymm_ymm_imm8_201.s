  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label           
  callq .move_128_256_xmm12_xmm13_ymm1  #  2     0x5   5      OPC=callq_label           
  vbroadcastsd %xmm1, %ymm10            #  3     0xa   5      OPC=vbroadcastsd_ymm_xmm  
  punpckhqdq %xmm10, %xmm1              #  4     0xf   5      OPC=punpckhqdq_xmm_xmm    
  retq                                  #  5     0x14  1      OPC=retq                  
                                                                                        
.size target, .-target
