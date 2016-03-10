  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  2     0x5   5      OPC=callq_label             
  vpunpckhdq %xmm4, %xmm3, %xmm1                #  3     0xa   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovd %r12d, %xmm6                            #  4     0xe   5      OPC=vmovd_xmm_r32           
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x13  5      OPC=callq_label             
  retq                                          #  6     0x18  1      OPC=retq                    
                                                                                                  
.size target, .-target