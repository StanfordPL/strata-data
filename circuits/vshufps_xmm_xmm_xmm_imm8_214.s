  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  vpunpckhqdq %xmm2, %xmm3, %xmm9                 #  1     0     4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vpunpckldq %xmm9, %xmm3, %xmm1                  #  2     0x4   5      OPC=vpunpckldq_xmm_xmm_xmm   
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label              
  vmovss %xmm10, %xmm2, %xmm15                    #  4     0xe   5      OPC=vmovss_xmm_xmm_xmm       
  movsd %xmm15, %xmm1                             #  5     0x13  5      OPC=movsd_xmm_xmm            
  retq                                            #  6     0x18  1      OPC=retq                     
                                                                                                     
.size target, .-target
