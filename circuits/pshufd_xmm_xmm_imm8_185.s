  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vmovss %xmm11, %xmm2, %xmm3                     #  2     0x5   5      OPC=vmovss_xmm_xmm_xmm    
  vmovhlps %xmm9, %xmm8, %xmm13                   #  3     0xa   5      OPC=vmovhlps_xmm_xmm_xmm  
  vorpd %xmm9, %xmm13, %xmm8                      #  4     0xf   5      OPC=vorpd_xmm_xmm_xmm     
  callq .move_128_64_xmm3_xmm10_xmm11             #  5     0x14  5      OPC=callq_label           
  vmovhlps %xmm2, %xmm8, %xmm9                    #  6     0x19  4      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1d  5      OPC=callq_label           
  retq                                            #  8     0x22  1      OPC=retq                  
                                                                                                  
.size target, .-target
