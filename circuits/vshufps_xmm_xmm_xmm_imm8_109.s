  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vmovaps %xmm5, %xmm7                          #  2     0x5   4      OPC=vmovaps_xmm_xmm          
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  3     0x9   5      OPC=callq_label              
  vpunpckhqdq %xmm1, %xmm2, %xmm9               #  4     0xe   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovshdup %xmm2, %xmm5                        #  5     0x12  4      OPC=vmovshdup_xmm_xmm        
  vmovss %xmm5, %xmm9, %xmm1                    #  6     0x16  4      OPC=vmovss_xmm_xmm_xmm       
  retq                                          #  7     0x1a  1      OPC=retq                     
                                                                                                   
.size target, .-target
