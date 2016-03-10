  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  2     0x5   5      OPC=callq_label             
  vpbroadcastw %xmm11, %xmm0                      #  3     0xa   5      OPC=vpbroadcastw_xmm_xmm    
  vpunpckhdq %xmm2, %xmm0, %xmm6                  #  4     0xf   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  unpcklpd %xmm6, %xmm1                           #  5     0x13  4      OPC=unpcklpd_xmm_xmm        
  retq                                            #  6     0x17  1      OPC=retq                    
                                                                                                    
.size target, .-target
