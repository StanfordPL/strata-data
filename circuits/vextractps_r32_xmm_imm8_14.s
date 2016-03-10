  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  vmovapd %xmm1, %xmm2                          #  1     0     4      OPC=vmovapd_xmm_xmm         
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label             
  vpunpckldq %xmm5, %xmm6, %xmm1                #  3     0x9   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovd %xmm1, %ebx                             #  4     0xd   4      OPC=vmovd_r32_xmm           
  retq                                          #  5     0x11  1      OPC=retq                    
                                                                                                  
.size target, .-target
