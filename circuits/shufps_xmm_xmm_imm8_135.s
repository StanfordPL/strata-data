  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm12_xmm13           #  1     0     5      OPC=callq_label             
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label             
  vpunpckldq %xmm13, %xmm2, %xmm12              #  3     0xa   5      OPC=vpunpckldq_xmm_xmm_xmm  
  punpcklqdq %xmm12, %xmm1                      #  4     0xf   5      OPC=punpcklqdq_xmm_xmm      
  movss %xmm7, %xmm1                            #  5     0x14  4      OPC=movss_xmm_xmm           
  retq                                          #  6     0x18  1      OPC=retq                    
                                                                                                  
.size target, .-target
