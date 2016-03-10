  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  movq %xmm1, %xmm13                            #  1     0     5      OPC=movq_xmm_xmm             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label              
  vdivss %xmm13, %xmm2, %xmm7                   #  3     0xa   5      OPC=vdivss_xmm_xmm_xmm       
  hsubpd %xmm4, %xmm4                           #  4     0xf   4      OPC=hsubpd_xmm_xmm           
  vpunpckhqdq %xmm4, %xmm7, %xmm7               #  5     0x13  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movups %xmm7, %xmm12                          #  6     0x17  4      OPC=movups_xmm_xmm           
  callq .move_64_128_xmm12_xmm13_xmm1           #  7     0x1b  5      OPC=callq_label              
  retq                                          #  8     0x20  1      OPC=retq                     
                                                                                                   
.size target, .-target
