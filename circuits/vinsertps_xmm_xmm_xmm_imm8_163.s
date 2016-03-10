  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vbroadcastss %xmm10, %xmm12                     #  2     0x5   5      OPC=vbroadcastss_xmm_xmm  
  unpckhps %xmm2, %xmm12                          #  3     0xa   4      OPC=unpckhps_xmm_xmm      
  vxorps %xmm12, %xmm11, %xmm1                    #  4     0xe   5      OPC=vxorps_xmm_xmm_xmm    
  movhlps %xmm10, %xmm1                           #  5     0x13  4      OPC=movhlps_xmm_xmm       
  retq                                            #  6     0x17  1      OPC=retq                  
                                                                                                  
.size target, .-target
