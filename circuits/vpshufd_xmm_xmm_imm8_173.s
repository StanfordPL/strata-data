  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm10_xmm11           #  1     0     5      OPC=callq_label           
  vpbroadcastd %xmm11, %xmm3                    #  2     0x5   5      OPC=vpbroadcastd_xmm_xmm  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  3     0xa   5      OPC=callq_label           
  movlhps %xmm3, %xmm5                          #  4     0xf   3      OPC=movlhps_xmm_xmm       
  vpxor %xmm6, %xmm11, %xmm1                    #  5     0x12  4      OPC=vpxor_xmm_xmm_xmm     
  vpxor %xmm1, %xmm5, %xmm1                     #  6     0x16  4      OPC=vpxor_xmm_xmm_xmm     
  retq                                          #  7     0x1a  1      OPC=retq                  
                                                                                                
.size target, .-target
