  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vpunpckhdq %xmm2, %xmm4, %xmm10               #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  xorpd %xmm10, %xmm5                           #  3     0x9   5      OPC=xorpd_xmm_xmm           
  vpunpckhdq %xmm5, %xmm2, %xmm0                #  4     0xe   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vandpd %xmm10, %xmm0, %xmm1                   #  5     0x12  5      OPC=vandpd_xmm_xmm_xmm      
  retq                                          #  6     0x17  1      OPC=retq                    
                                                                                                  
.size target, .-target
