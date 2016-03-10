  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm2  #  2     0x5   5      OPC=callq_label             
  vpunpckldq %xmm3, %xmm10, %xmm13                #  3     0xa   4      OPC=vpunpckldq_xmm_xmm_xmm  
  cvtsd2ss %xmm9, %xmm13                          #  4     0xe   5      OPC=cvtsd2ss_xmm_xmm        
  vmovlhps %xmm10, %xmm13, %xmm1                  #  5     0x13  5      OPC=vmovlhps_xmm_xmm_xmm    
  retq                                            #  6     0x18  1      OPC=retq                    
                                                                                                    
.size target, .-target
