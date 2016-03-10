  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm9, %xmm10, %xmm7                 #  2     0x5   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovsldup %xmm3, %xmm9                          #  3     0xa   4      OPC=vmovsldup_xmm_xmm       
  vmovsd %xmm7, %xmm9, %xmm1                      #  4     0xe   4      OPC=vmovsd_xmm_xmm_xmm      
  retq                                            #  5     0x12  1      OPC=retq                    
                                                                                                    
.size target, .-target
