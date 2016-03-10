  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vbroadcastsd %xmm11, %ymm9                      #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm    
  vminpd %xmm2, %xmm2, %xmm15                     #  3     0xa   4      OPC=vminpd_xmm_xmm_xmm      
  vmovddup %xmm8, %xmm12                          #  4     0xe   5      OPC=vmovddup_xmm_xmm        
  vpunpckhdq %xmm15, %xmm9, %xmm8                 #  5     0x13  5      OPC=vpunpckhdq_xmm_xmm_xmm  
  unpckhps %xmm12, %xmm9                          #  6     0x18  4      OPC=unpckhps_xmm_xmm        
  callq .move_64_128_xmm8_xmm9_xmm1               #  7     0x1c  5      OPC=callq_label             
  retq                                            #  8     0x21  1      OPC=retq                    
                                                                                                    
.size target, .-target
