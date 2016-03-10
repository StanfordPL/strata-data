  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vmulpd %xmm2, %xmm1, %xmm6                      #  2     0x5   4      OPC=vmulpd_xmm_xmm_xmm    
  mulpd %xmm10, %xmm8                             #  3     0x9   5      OPC=mulpd_xmm_xmm         
  punpckhqdq %xmm10, %xmm1                        #  4     0xe   5      OPC=punpckhqdq_xmm_xmm    
  vmovlhps %xmm6, %xmm1, %xmm4                    #  5     0x13  4      OPC=vmovlhps_xmm_xmm_xmm  
  addpd %xmm4, %xmm8                              #  6     0x17  5      OPC=addpd_xmm_xmm         
  punpckhqdq %xmm8, %xmm1                         #  7     0x1c  5      OPC=punpckhqdq_xmm_xmm    
  retq                                            #  8     0x21  1      OPC=retq                  
                                                                                                  
.size target, .-target
