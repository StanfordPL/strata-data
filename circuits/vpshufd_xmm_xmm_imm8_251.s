  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vbroadcastss %xmm11, %xmm7                      #  2     0x5   5      OPC=vbroadcastss_xmm_xmm    
  vpunpckldq %xmm10, %xmm11, %xmm1                #  3     0xa   5      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r8_r9                  #  4     0xf   5      OPC=callq_label             
  callq .move_r8b_to_byte_13_of_ymm1              #  5     0x14  5      OPC=callq_label             
  vmovlhps %xmm7, %xmm1, %xmm1                    #  6     0x19  4      OPC=vmovlhps_xmm_xmm_xmm    
  retq                                            #  7     0x1d  1      OPC=retq                    
                                                                                                    
.size target, .-target
