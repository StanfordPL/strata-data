  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  vmovsldup %xmm2, %xmm3                          #  1     0     4      OPC=vmovsldup_xmm_xmm       
  vpunpckhdq %xmm3, %xmm2, %xmm1                  #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  3     0x8   5      OPC=callq_label             
  punpckldq %xmm11, %xmm3                         #  4     0xd   5      OPC=punpckldq_xmm_xmm       
  callq .move_128_64_xmm3_xmm10_xmm11             #  5     0x12  5      OPC=callq_label             
  movsd %xmm10, %xmm1                             #  6     0x17  5      OPC=movsd_xmm_xmm           
  retq                                            #  7     0x1c  1      OPC=retq                    
                                                                                                    
.size target, .-target
