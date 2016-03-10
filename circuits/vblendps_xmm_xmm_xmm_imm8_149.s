  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  vmovsd %xmm3, %xmm2, %xmm4                      #  1     0     4      OPC=vmovsd_xmm_xmm_xmm    
  vmaxps %xmm3, %xmm4, %xmm1                      #  2     0x4   4      OPC=vmaxps_xmm_xmm_xmm    
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0x8   5      OPC=callq_label           
  vandpd %xmm9, %xmm4, %xmm7                      #  4     0xd   5      OPC=vandpd_xmm_xmm_xmm    
  punpckhqdq %xmm7, %xmm3                         #  5     0x12  4      OPC=punpckhqdq_xmm_xmm    
  vminps %ymm1, %ymm4, %ymm8                      #  6     0x16  4      OPC=vminps_ymm_ymm_ymm    
  vpbroadcastd %xmm3, %xmm10                      #  7     0x1a  5      OPC=vpbroadcastd_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  8     0x1f  5      OPC=callq_label           
  retq                                            #  9     0x24  1      OPC=retq                  
                                                                                                  
.size target, .-target
