  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vmovss %xmm9, %xmm1, %xmm4                      #  2     0x5   5      OPC=vmovss_xmm_xmm_xmm      
  vpunpckhdq %xmm1, %xmm8, %xmm11                 #  3     0xa   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovsd %xmm4, %xmm11, %xmm12                    #  4     0xe   4      OPC=vmovsd_xmm_xmm_xmm      
  movaps %xmm12, %xmm1                            #  5     0x12  4      OPC=movaps_xmm_xmm          
  retq                                            #  6     0x16  1      OPC=retq                    
                                                                                                    
.size target, .-target
