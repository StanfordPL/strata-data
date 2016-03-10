  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vmaxps %ymm2, %ymm2, %ymm3          #  1     0     4      OPC=vmaxps_ymm_ymm_ymm  
  callq .move_256_128_ymm3_xmm8_xmm9  #  2     0x4   5      OPC=callq_label         
  vmovdqu %xmm8, %xmm1                #  3     0x9   5      OPC=vmovdqu_xmm_xmm     
  movdqa %xmm9, %xmm1                 #  4     0xe   5      OPC=movdqa_xmm_xmm      
  retq                                #  5     0x13  1      OPC=retq                
                                                                                    
.size target, .-target
