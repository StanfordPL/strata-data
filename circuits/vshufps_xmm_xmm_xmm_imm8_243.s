  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpbroadcastq %xmm2, %xmm10                      #  2     0x5   5      OPC=vpbroadcastq_xmm_xmm    
  vmovshdup %xmm3, %xmm1                          #  3     0xa   4      OPC=vmovshdup_xmm_xmm       
  vpunpckldq %xmm10, %xmm11, %xmm2                #  4     0xe   5      OPC=vpunpckldq_xmm_xmm_xmm  
  movsd %xmm2, %xmm1                              #  5     0x13  4      OPC=movsd_xmm_xmm           
  retq                                            #  6     0x17  1      OPC=retq                    
                                                                                                    
.size target, .-target
