  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vmovhlps %xmm10, %xmm9, %xmm15                  #  2     0x5   5      OPC=vmovhlps_xmm_xmm_xmm  
  vaddpd %xmm9, %xmm15, %xmm3                     #  3     0xa   5      OPC=vaddpd_xmm_xmm_xmm    
  vpbroadcastq %xmm3, %xmm12                      #  4     0xf   5      OPC=vpbroadcastq_xmm_xmm  
  cvtdq2pd %xmm9, %xmm1                           #  5     0x14  5      OPC=cvtdq2pd_xmm_xmm      
  punpckhdq %xmm12, %xmm1                         #  6     0x19  5      OPC=punpckhdq_xmm_xmm     
  retq                                            #  7     0x1e  1      OPC=retq                  
                                                                                                  
.size target, .-target
