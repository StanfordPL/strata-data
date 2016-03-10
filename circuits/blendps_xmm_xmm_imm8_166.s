  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vmovshdup %xmm1, %xmm11                       #  2     0x5   4      OPC=vmovshdup_xmm_xmm       
  vmovdqa %xmm6, %xmm6                          #  3     0x9   4      OPC=vmovdqa_xmm_xmm         
  vunpckhpd %xmm7, %xmm11, %xmm7                #  4     0xd   4      OPC=vunpckhpd_xmm_xmm_xmm   
  vpunpckldq %xmm5, %xmm1, %xmm4                #  5     0x11  4      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  6     0x15  5      OPC=callq_label             
  retq                                          #  7     0x1a  1      OPC=retq                    
                                                                                                  
.size target, .-target
