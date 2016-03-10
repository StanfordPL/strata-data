  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_128_64_xmm3_xmm12_xmm13   #  1     0     5      OPC=callq_label         
  vmaxsd %xmm12, %xmm3, %xmm13          #  2     0x5   5      OPC=vmaxsd_xmm_xmm_xmm  
  vmovups %ymm2, %ymm12                 #  3     0xa   4      OPC=vmovups_ymm_ymm     
  callq .move_128_256_xmm12_xmm13_ymm1  #  4     0xe   5      OPC=callq_label         
  retq                                  #  5     0x13  1      OPC=retq                
                                                                                      
.size target, .-target
