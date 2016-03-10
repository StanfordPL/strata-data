  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  pxor %xmm4, %xmm4                             #  2     0x5   4      OPC=pxor_xmm_xmm        
  vpaddq %xmm7, %xmm4, %xmm9                    #  3     0x9   4      OPC=vpaddq_xmm_xmm_xmm  
  punpckldq %xmm9, %xmm6                        #  4     0xd   5      OPC=punpckldq_xmm_xmm   
  punpckhqdq %xmm7, %xmm1                       #  5     0x12  4      OPC=punpckhqdq_xmm_xmm  
  punpcklwd %xmm6, %xmm1                        #  6     0x16  4      OPC=punpcklwd_xmm_xmm   
  retq                                          #  7     0x1a  1      OPC=retq                
                                                                                              
.size target, .-target
