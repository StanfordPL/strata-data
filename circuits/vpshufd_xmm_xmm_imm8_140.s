  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vhsubpd %xmm7, %xmm4, %xmm11                  #  2     0x5   4      OPC=vhsubpd_xmm_xmm_xmm     
  movsldup %xmm2, %xmm9                         #  3     0x9   5      OPC=movsldup_xmm_xmm        
  unpckhps %xmm9, %xmm11                        #  4     0xe   4      OPC=unpckhps_xmm_xmm        
  vpunpckldq %xmm11, %xmm9, %xmm10              #  5     0x12  5      OPC=vpunpckldq_xmm_xmm_xmm  
  vminss %xmm9, %xmm10, %xmm1                   #  6     0x17  5      OPC=vminss_xmm_xmm_xmm      
  retq                                          #  7     0x1c  1      OPC=retq                    
                                                                                                  
.size target, .-target
