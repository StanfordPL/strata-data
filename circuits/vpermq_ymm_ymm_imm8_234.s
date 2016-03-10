  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label         
  callq .move_64_128_xmm12_xmm13_xmm2   #  2     0x5   5      OPC=callq_label         
  punpckhqdq %xmm2, %xmm2               #  3     0xa   4      OPC=punpckhqdq_xmm_xmm  
  vmaxpd %ymm2, %ymm2, %ymm1            #  4     0xe   4      OPC=vmaxpd_ymm_ymm_ymm  
  retq                                  #  5     0x12  1      OPC=retq                
                                                                                      
.size target, .-target
