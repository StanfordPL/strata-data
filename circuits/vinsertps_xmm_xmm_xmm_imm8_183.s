  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label             
  vpbroadcastd %xmm6, %xmm12                      #  3     0xa   5      OPC=vpbroadcastd_xmm_xmm    
  vpunpckldq %xmm12, %xmm9, %xmm7                 #  4     0xf   5      OPC=vpunpckldq_xmm_xmm_xmm  
  unpckhpd %xmm7, %xmm5                           #  5     0x14  4      OPC=unpckhpd_xmm_xmm        
  vorps %xmm5, %xmm5, %xmm1                       #  6     0x18  4      OPC=vorps_xmm_xmm_xmm       
  retq                                            #  7     0x1c  1      OPC=retq                    
                                                                                                    
.size target, .-target
