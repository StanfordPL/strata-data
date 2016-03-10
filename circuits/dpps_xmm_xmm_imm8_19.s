  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label           
  mulps %xmm8, %xmm1                              #  3     0xa   4      OPC=mulps_xmm_xmm         
  vbroadcastss %xmm1, %ymm12                      #  4     0xe   5      OPC=vbroadcastss_ymm_xmm  
  vaddps %xmm9, %xmm12, %xmm14                    #  5     0x13  5      OPC=vaddps_xmm_xmm_xmm    
  vsubsd %xmm4, %xmm14, %xmm12                    #  6     0x18  4      OPC=vsubsd_xmm_xmm_xmm    
  unpckhpd %xmm12, %xmm1                          #  7     0x1c  5      OPC=unpckhpd_xmm_xmm      
  punpckhqdq %xmm4, %xmm1                         #  8     0x21  4      OPC=punpckhqdq_xmm_xmm    
  retq                                            #  9     0x25  1      OPC=retq                  
                                                                                                  
.size target, .-target
