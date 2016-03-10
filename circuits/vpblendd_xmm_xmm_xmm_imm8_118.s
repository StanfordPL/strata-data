  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vmaxss %xmm8, %xmm3, %xmm12                     #  2     0x5   5      OPC=vmaxss_xmm_xmm_xmm       
  movddup %xmm3, %xmm13                           #  3     0xa   5      OPC=movddup_xmm_xmm          
  vpbroadcastq %xmm10, %xmm1                      #  4     0xf   5      OPC=vpbroadcastq_xmm_xmm     
  vpunpckhqdq %xmm13, %xmm12, %xmm10              #  5     0x14  5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movshdup %xmm12, %xmm9                          #  6     0x19  5      OPC=movshdup_xmm_xmm         
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1e  5      OPC=callq_label              
  retq                                            #  8     0x23  1      OPC=retq                     
                                                                                                     
.size target, .-target
