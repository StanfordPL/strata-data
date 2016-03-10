  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vpunpckhdq %xmm6, %xmm2, %xmm10               #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movsd %xmm4, %xmm6                            #  3     0x9   4      OPC=movsd_xmm_xmm           
  vmovlhps %xmm10, %xmm6, %xmm1                 #  4     0xd   5      OPC=vmovlhps_xmm_xmm_xmm    
  retq                                          #  5     0x12  1      OPC=retq                    
                                                                                                  
.size target, .-target
