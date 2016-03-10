  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm6, %xmm2, %xmm6                #  2     0x5   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vunpckhps %xmm2, %xmm6, %xmm0                 #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm   
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  4     0xd   5      OPC=callq_label             
  movsd %xmm0, %xmm1                            #  5     0x12  4      OPC=movsd_xmm_xmm           
  retq                                          #  6     0x16  1      OPC=retq                    
                                                                                                  
.size target, .-target
