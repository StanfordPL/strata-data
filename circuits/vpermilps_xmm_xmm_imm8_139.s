  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpbroadcastd %xmm10, %xmm10                     #  2     0x5   5      OPC=vpbroadcastd_xmm_xmm    
  vpbroadcastd %xmm2, %ymm15                      #  3     0xa   5      OPC=vpbroadcastd_ymm_xmm    
  vmovsd %xmm2, %xmm15, %xmm3                     #  4     0xf   4      OPC=vmovsd_xmm_xmm_xmm      
  vpunpckhdq %xmm10, %xmm3, %xmm2                 #  5     0x13  5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovdqu %xmm2, %xmm15                           #  6     0x18  4      OPC=vmovdqu_xmm_xmm         
  vmovss %xmm11, %xmm15, %xmm1                    #  7     0x1c  5      OPC=vmovss_xmm_xmm_xmm      
  retq                                            #  8     0x21  1      OPC=retq                    
                                                                                                    
.size target, .-target
