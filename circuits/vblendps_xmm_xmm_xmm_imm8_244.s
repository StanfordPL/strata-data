  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm3_xmm8_xmm9    #  1     0     5      OPC=callq_label             
  movsldup %xmm9, %xmm5                #  2     0x5   5      OPC=movsldup_xmm_xmm        
  callq .move_128_64_xmm2_xmm10_xmm11  #  3     0xa   5      OPC=callq_label             
  vpunpckldq %xmm11, %xmm5, %xmm1      #  4     0xf   5      OPC=vpunpckldq_xmm_xmm_xmm  
  movsd %xmm10, %xmm1                  #  5     0x14  5      OPC=movsd_xmm_xmm           
  retq                                 #  6     0x19  1      OPC=retq                    
                                                                                         
.size target, .-target
