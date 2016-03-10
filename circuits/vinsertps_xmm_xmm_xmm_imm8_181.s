  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpunpckhdq %xmm3, %xmm11, %xmm1                 #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovss %xmm1, %xmm2, %xmm5                      #  3     0x9   4      OPC=vmovss_xmm_xmm_xmm      
  vmovlhps %xmm1, %xmm5, %xmm9                    #  4     0xd   4      OPC=vmovlhps_xmm_xmm_xmm    
  vminsd %xmm5, %xmm9, %xmm1                      #  5     0x11  4      OPC=vminsd_xmm_xmm_xmm      
  retq                                            #  6     0x15  1      OPC=retq                    
                                                                                                    
.size target, .-target
