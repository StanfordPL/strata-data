  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  vbroadcastss %xmm1, %xmm15                    #  2     0x5   5      OPC=vbroadcastss_xmm_xmm  
  vpbroadcastd %xmm5, %xmm13                    #  3     0xa   5      OPC=vpbroadcastd_xmm_xmm  
  unpckhps %xmm15, %xmm1                        #  4     0xf   4      OPC=unpckhps_xmm_xmm      
  punpcklqdq %xmm13, %xmm1                      #  5     0x13  5      OPC=punpcklqdq_xmm_xmm    
  retq                                          #  6     0x18  1      OPC=retq                  
                                                                                                
.size target, .-target
