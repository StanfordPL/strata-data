  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  movddup %xmm7, %xmm8                          #  2     0x5   5      OPC=movddup_xmm_xmm         
  vpunpckhdq %xmm2, %xmm8, %xmm9                #  3     0xa   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovsldup %xmm1, %xmm8                        #  4     0xe   4      OPC=vmovsldup_xmm_xmm       
  callq .move_64_128_xmm8_xmm9_xmm1             #  5     0x12  5      OPC=callq_label             
  retq                                          #  6     0x17  1      OPC=retq                    
                                                                                                  
.size target, .-target
