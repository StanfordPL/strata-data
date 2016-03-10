  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vpunpckhdq %xmm3, %xmm4, %xmm1                #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpbroadcastd %xmm3, %xmm6                     #  3     0x9   5      OPC=vpbroadcastd_xmm_xmm    
  callq .move_256_128_ymm1_xmm8_xmm9            #  4     0xe   5      OPC=callq_label             
  vorps %xmm7, %xmm8, %xmm4                     #  5     0x13  4      OPC=vorps_xmm_xmm_xmm       
  rcpps %xmm2, %xmm0                            #  6     0x17  3      OPC=rcpps_xmm_xmm           
  vphaddd %xmm0, %xmm8, %xmm7                   #  7     0x1a  5      OPC=vphaddd_xmm_xmm_xmm     
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  8     0x1f  5      OPC=callq_label             
  retq                                          #  9     0x24  1      OPC=retq                    
                                                                                                  
.size target, .-target
