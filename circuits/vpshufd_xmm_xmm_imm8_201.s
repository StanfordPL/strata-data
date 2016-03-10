  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  vmovupd %xmm2, %xmm1                            #  1     0     4      OPC=vmovupd_xmm_xmm         
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label             
  unpcklps %xmm8, %xmm9                           #  3     0x9   4      OPC=unpcklps_xmm_xmm        
  callq .move_128_64_xmm1_xmm10_xmm11             #  4     0xd   5      OPC=callq_label             
  vpunpckldq %xmm11, %xmm9, %xmm1                 #  5     0x12  5      OPC=vpunpckldq_xmm_xmm_xmm  
  retq                                            #  6     0x17  1      OPC=retq                    
                                                                                                    
.size target, .-target
