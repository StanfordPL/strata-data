  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vpunpckhdq %xmm1, %xmm7, %xmm2                #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm   
  vpunpckhqdq %xmm2, %xmm6, %xmm3               #  3     0x9   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_256_128_ymm3_xmm8_xmm9            #  4     0xd   5      OPC=callq_label              
  movdqa %xmm8, %xmm1                           #  5     0x12  5      OPC=movdqa_xmm_xmm           
  retq                                          #  6     0x17  1      OPC=retq                     
                                                                                                   
.size target, .-target
