  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpor %xmm11, %xmm2, %xmm1                       #  2     0x5   5      OPC=vpor_xmm_xmm_xmm         
  punpcklqdq %xmm8, %xmm11                        #  3     0xa   5      OPC=punpcklqdq_xmm_xmm       
  vpunpckhqdq %xmm8, %xmm3, %xmm10                #  4     0xf   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovq %xmm3, %xmm8                              #  5     0x14  4      OPC=vmovq_xmm_xmm            
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x18  5      OPC=callq_label              
  retq                                            #  7     0x1d  1      OPC=retq                     
                                                                                                     
.size target, .-target
