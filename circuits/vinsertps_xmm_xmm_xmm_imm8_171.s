  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  callq .move_128_64_xmm1_xmm12_xmm13           #  2     0x5   5      OPC=callq_label              
  vpunpckhqdq %xmm13, %xmm13, %xmm0             #  3     0xa   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vhsubpd %xmm6, %xmm0, %xmm1                   #  4     0xf   4      OPC=vhsubpd_xmm_xmm_xmm      
  retq                                          #  5     0x13  1      OPC=retq                     
                                                                                                   
.size target, .-target
