  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vbroadcastss %xmm9, %xmm11                      #  2     0x5   5      OPC=vbroadcastss_xmm_xmm  
  vpbroadcastd %xmm10, %xmm1                      #  3     0xa   5      OPC=vpbroadcastd_xmm_xmm  
  movsd %xmm11, %xmm1                             #  4     0xf   5      OPC=movsd_xmm_xmm         
  retq                                            #  5     0x14  1      OPC=retq                  
                                                                                                  
.size target, .-target
