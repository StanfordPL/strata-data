  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  callq .move_128_64_xmm2_xmm12_xmm13           #  2     0x5   5      OPC=callq_label         
  vsubsd %xmm2, %xmm2, %xmm1                    #  3     0xa   4      OPC=vsubsd_xmm_xmm_xmm  
  callq .move_128_64_xmm1_xmm10_xmm11           #  4     0xe   5      OPC=callq_label         
  vmovss %xmm5, %xmm13, %xmm1                   #  5     0x13  4      OPC=vmovss_xmm_xmm_xmm  
  punpcklqdq %xmm11, %xmm1                      #  6     0x17  5      OPC=punpcklqdq_xmm_xmm  
  retq                                          #  7     0x1c  1      OPC=retq                
                                                                                              
.size target, .-target
