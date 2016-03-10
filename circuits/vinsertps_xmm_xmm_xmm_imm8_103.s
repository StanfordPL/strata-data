  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vcvtdq2pd %xmm3, %xmm3                          #  2     0x5   4      OPC=vcvtdq2pd_xmm_xmm       
  callq .move_256_128_ymm3_xmm12_xmm13            #  3     0x9   5      OPC=callq_label             
  vpunpckhdq %xmm2, %xmm11, %xmm0                 #  4     0xe   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  cvtss2sd %xmm13, %xmm0                          #  5     0x12  5      OPC=cvtss2sd_xmm_xmm        
  vorpd %xmm0, %xmm13, %xmm1                      #  6     0x17  4      OPC=vorpd_xmm_xmm_xmm       
  retq                                            #  7     0x1b  1      OPC=retq                    
                                                                                                    
.size target, .-target
