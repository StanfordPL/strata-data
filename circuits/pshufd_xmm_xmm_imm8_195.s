  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpunpcklqdq %xmm8, %xmm8, %xmm10                #  2     0x5   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vorps %xmm2, %xmm10, %xmm9                      #  3     0xa   4      OPC=vorps_xmm_xmm_xmm        
  vhsubpd %xmm9, %xmm11, %xmm8                    #  4     0xe   5      OPC=vhsubpd_xmm_xmm_xmm      
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x13  5      OPC=callq_label              
  retq                                            #  6     0x18  1      OPC=retq                     
                                                                                                     
.size target, .-target
