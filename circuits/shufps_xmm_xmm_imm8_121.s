  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  vpor %xmm2, %xmm2, %xmm3                        #  1     0     4      OPC=vpor_xmm_xmm_xmm         
  vmovlhps %xmm3, %xmm1, %xmm3                    #  2     0x4   4      OPC=vmovlhps_xmm_xmm_xmm     
  unpckhps %xmm3, %xmm2                           #  3     0x8   3      OPC=unpckhps_xmm_xmm         
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  4     0xb   5      OPC=callq_label              
  vpunpckhqdq %xmm8, %xmm2, %xmm11                #  5     0x10  5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vunpcklps %xmm10, %xmm9, %xmm10                 #  6     0x15  5      OPC=vunpcklps_xmm_xmm_xmm    
  callq .move_64_128_xmm10_xmm11_xmm1             #  7     0x1a  5      OPC=callq_label              
  retq                                            #  8     0x1f  1      OPC=retq                     
                                                                                                     
.size target, .-target
