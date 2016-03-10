  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label          
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label          
  vphsubd %xmm2, %xmm7, %xmm11                    #  3     0xa   5      OPC=vphsubd_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  4     0xf   5      OPC=callq_label          
  vmovss %xmm4, %xmm1, %xmm1                      #  5     0x14  4      OPC=vmovss_xmm_xmm_xmm   
  retq                                            #  6     0x18  1      OPC=retq                 
                                                                                                 
.size target, .-target
