  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  callq .move_128_256_xmm8_xmm9_ymm1              #  2     0x5   5      OPC=callq_label             
  vxorps %xmm9, %xmm1, %xmm5                      #  3     0xa   5      OPC=vxorps_xmm_xmm_xmm      
  vphaddd %xmm1, %xmm8, %xmm1                     #  4     0xf   5      OPC=vphaddd_xmm_xmm_xmm     
  callq .move_128_64_xmm2_xmm12_xmm13             #  5     0x14  5      OPC=callq_label             
  vpunpckldq %xmm13, %xmm5, %xmm3                 #  6     0x19  5      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovhlps %xmm1, %xmm3, %xmm1                    #  7     0x1e  4      OPC=vmovhlps_xmm_xmm_xmm    
  retq                                            #  8     0x22  1      OPC=retq                    
                                                                                                    
.size target, .-target
