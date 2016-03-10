  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm8_xmm9    #  1     0     5      OPC=callq_label             
  callq .move_128_64_xmm1_xmm10_xmm11  #  2     0x5   5      OPC=callq_label             
  unpcklps %xmm9, %xmm1                #  3     0xa   4      OPC=unpcklps_xmm_xmm        
  vpunpckhdq %xmm1, %xmm11, %xmm9      #  4     0xe   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movdqa %xmm9, %xmm1                  #  5     0x12  5      OPC=movdqa_xmm_xmm          
  retq                                 #  6     0x17  1      OPC=retq                    
                                                                                         
.size target, .-target
