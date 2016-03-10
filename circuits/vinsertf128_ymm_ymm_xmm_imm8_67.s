  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  callq .move_128_64_xmm3_xmm8_xmm9   #  1     0     5      OPC=callq_label         
  vmaxsd %xmm8, %xmm3, %xmm9          #  2     0x5   5      OPC=vmaxsd_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1  #  3     0xa   5      OPC=callq_label         
  movdqa %xmm2, %xmm1                 #  4     0xf   4      OPC=movdqa_xmm_xmm      
  retq                                #  5     0x13  1      OPC=retq                
                                                                                    
.size target, .-target
