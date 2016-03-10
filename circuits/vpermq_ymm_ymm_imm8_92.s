  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm8_xmm9     #  1     0     5      OPC=callq_label         
  callq .move_128_256_xmm8_xmm9_ymm1    #  2     0x5   5      OPC=callq_label         
  vmovddup %ymm1, %ymm1                 #  3     0xa   4      OPC=vmovddup_ymm_ymm    
  callq .move_256_128_ymm2_xmm10_xmm11  #  4     0xe   5      OPC=callq_label         
  divss %xmm2, %xmm11                   #  5     0x13  5      OPC=divss_xmm_xmm       
  punpckhqdq %xmm11, %xmm1              #  6     0x18  5      OPC=punpckhqdq_xmm_xmm  
  retq                                  #  7     0x1d  1      OPC=retq                
                                                                                      
.size target, .-target
