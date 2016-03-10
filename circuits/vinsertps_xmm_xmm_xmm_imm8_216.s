  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm11, %xmm2, %xmm13                #  2     0x5   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovq %xmm13, %xmm1                             #  3     0xa   5      OPC=vmovq_xmm_xmm           
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  4     0xf   5      OPC=callq_label             
  punpcklqdq %xmm6, %xmm1                         #  5     0x14  4      OPC=punpcklqdq_xmm_xmm      
  retq                                            #  6     0x18  1      OPC=retq                    
                                                                                                    
.size target, .-target
