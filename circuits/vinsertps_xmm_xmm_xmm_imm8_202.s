  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vsubsd %xmm7, %xmm2, %xmm9                    #  2     0x5   4      OPC=vsubsd_xmm_xmm_xmm      
  vpunpckhdq %xmm4, %xmm9, %xmm12               #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movddup %xmm7, %xmm14                         #  4     0xd   5      OPC=movddup_xmm_xmm         
  vunpcklpd %xmm12, %xmm14, %xmm1               #  5     0x12  5      OPC=vunpcklpd_xmm_xmm_xmm   
  retq                                          #  6     0x17  1      OPC=retq                    
                                                                                                  
.size target, .-target
