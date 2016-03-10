  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label              
  vpunpckldq %xmm3, %xmm6, %xmm14                 #  3     0xa   4      OPC=vpunpckldq_xmm_xmm_xmm   
  vpunpckhqdq %xmm9, %xmm6, %xmm6                 #  4     0xe   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vbroadcastss %xmm6, %xmm15                      #  5     0x13  5      OPC=vbroadcastss_xmm_xmm     
  vmovapd %xmm14, %xmm5                           #  6     0x18  5      OPC=vmovapd_xmm_xmm          
  vunpcklpd %xmm5, %xmm15, %xmm1                  #  7     0x1d  4      OPC=vunpcklpd_xmm_xmm_xmm    
  retq                                            #  8     0x21  1      OPC=retq                     
                                                                                                     
.size target, .-target
