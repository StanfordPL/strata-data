  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpunpckhdq %xmm1, %xmm10, %xmm14                #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  punpckhqdq %xmm14, %xmm2                        #  3     0x9   5      OPC=punpckhqdq_xmm_xmm      
  vminpd %xmm2, %xmm2, %xmm13                     #  4     0xe   4      OPC=vminpd_xmm_xmm_xmm      
  vmovss %xmm1, %xmm13, %xmm15                    #  5     0x12  4      OPC=vmovss_xmm_xmm_xmm      
  movdqa %xmm15, %xmm1                            #  6     0x16  5      OPC=movdqa_xmm_xmm          
  retq                                            #  7     0x1b  1      OPC=retq                    
                                                                                                    
.size target, .-target
