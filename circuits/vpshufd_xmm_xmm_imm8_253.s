  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vmovshdup %xmm2, %xmm14                         #  2     0x5   4      OPC=vmovshdup_xmm_xmm       
  vpunpckldq %xmm11, %xmm14, %xmm13               #  3     0x9   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovsd %xmm13, %xmm14, %xmm1                    #  4     0xe   5      OPC=vmovsd_xmm_xmm_xmm      
  retq                                            #  5     0x13  1      OPC=retq                    
                                                                                                    
.size target, .-target
