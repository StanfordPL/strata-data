  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_64_xmm2_xmm12_xmm13             #  1     0     5      OPC=callq_label       
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label       
  mulpd %xmm2, %xmm1                              #  3     0xa   4      OPC=mulpd_xmm_xmm     
  addpd %xmm12, %xmm1                             #  4     0xe   5      OPC=addpd_xmm_xmm     
  unpckhpd %xmm11, %xmm1                          #  5     0x13  5      OPC=unpckhpd_xmm_xmm  
  retq                                            #  6     0x18  1      OPC=retq              
                                                                                              
.size target, .-target
