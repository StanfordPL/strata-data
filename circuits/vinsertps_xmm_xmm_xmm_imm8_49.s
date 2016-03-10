  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpunpcklqdq %xmm3, %xmm10, %xmm7                #  2     0x5   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vcvtsd2ss %xmm8, %xmm2, %xmm1                   #  3     0x9   5      OPC=vcvtsd2ss_xmm_xmm_xmm    
  vpunpckhdq %xmm7, %xmm1, %xmm6                  #  4     0xe   4      OPC=vpunpckhdq_xmm_xmm_xmm   
  punpcklqdq %xmm6, %xmm1                         #  5     0x12  4      OPC=punpcklqdq_xmm_xmm       
  retq                                            #  6     0x16  1      OPC=retq                     
                                                                                                     
.size target, .-target
