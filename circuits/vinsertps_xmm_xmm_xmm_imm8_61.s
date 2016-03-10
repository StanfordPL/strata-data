  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  vmovq %xmm2, %xmm1                              #  1     0     4      OPC=vmovq_xmm_xmm           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label             
  sqrtpd %xmm10, %xmm11                           #  3     0x9   5      OPC=sqrtpd_xmm_xmm          
  vpunpckldq %xmm9, %xmm11, %xmm1                 #  4     0xe   5      OPC=vpunpckldq_xmm_xmm_xmm  
  retq                                            #  5     0x13  1      OPC=retq                    
                                                                                                    
.size target, .-target
