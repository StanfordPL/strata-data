  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm2, %xmm5, %xmm5                #  2     0x5   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vunpcklpd %xmm2, %xmm5, %xmm10                #  3     0x9   4      OPC=vunpcklpd_xmm_xmm_xmm   
  movupd %xmm10, %xmm1                          #  4     0xd   5      OPC=movupd_xmm_xmm          
  retq                                          #  5     0x12  1      OPC=retq                    
                                                                                                  
.size target, .-target
