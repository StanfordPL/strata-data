  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  2     0x5   5      OPC=callq_label             
  hsubpd %xmm1, %xmm7                           #  3     0xa   4      OPC=hsubpd_xmm_xmm          
  vpunpckldq %xmm4, %xmm7, %xmm9                #  4     0xe   4      OPC=vpunpckldq_xmm_xmm_xmm  
  movsd %xmm9, %xmm1                            #  5     0x12  5      OPC=movsd_xmm_xmm           
  retq                                          #  6     0x17  1      OPC=retq                    
                                                                                                  
.size target, .-target
