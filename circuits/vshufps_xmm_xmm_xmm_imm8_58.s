  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  vbroadcastss %xmm3, %xmm1                       #  1     0     5      OPC=vbroadcastss_xmm_xmm  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label           
  unpckhps %xmm1, %xmm3                           #  3     0xa   3      OPC=unpckhps_xmm_xmm      
  vbroadcastss %xmm10, %xmm1                      #  4     0xd   5      OPC=vbroadcastss_xmm_xmm  
  punpckhqdq %xmm3, %xmm1                         #  5     0x12  4      OPC=punpckhqdq_xmm_xmm    
  retq                                            #  6     0x16  1      OPC=retq                  
                                                                                                  
.size target, .-target
