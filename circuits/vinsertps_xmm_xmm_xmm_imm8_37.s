  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vphaddd %xmm11, %xmm10, %xmm1                   #  2     0x5   5      OPC=vphaddd_xmm_xmm_xmm    
  vcvtsd2ss %xmm10, %xmm2, %xmm8                  #  3     0xa   5      OPC=vcvtsd2ss_xmm_xmm_xmm  
  vunpckhps %xmm2, %xmm9, %xmm10                  #  4     0xf   4      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x13  5      OPC=callq_label            
  retq                                            #  6     0x18  1      OPC=retq                   
                                                                                                   
.size target, .-target
