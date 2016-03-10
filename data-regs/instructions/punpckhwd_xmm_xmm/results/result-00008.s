  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vpunpckhqdq %xmm4, %xmm1, %xmm3               #  2     0x5   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vunpckhpd %xmm1, %xmm2, %xmm10                #  3     0x9   4      OPC=vunpckhpd_xmm_xmm_xmm    
  punpcklwd %xmm10, %xmm3                       #  4     0xd   5      OPC=punpcklwd_xmm_xmm        
  callq .move_256_128_ymm3_xmm12_xmm13          #  5     0x12  5      OPC=callq_label              
  movapd %xmm12, %xmm1                          #  6     0x17  5      OPC=movapd_xmm_xmm           
  retq                                          #  7     0x1c  1      OPC=retq                     
                                                                                                   
.size target, .-target
