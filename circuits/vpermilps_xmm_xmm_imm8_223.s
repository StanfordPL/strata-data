  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vmovshdup %xmm2, %xmm14              #  1     0     4      OPC=vmovshdup_xmm_xmm        
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x4   5      OPC=callq_label              
  callq .move_128_64_xmm2_xmm8_xmm9    #  3     0x9   5      OPC=callq_label              
  vminps %xmm13, %xmm13, %xmm3         #  4     0xe   5      OPC=vminps_xmm_xmm_xmm       
  vmovmskpd %xmm8, %r8d                #  5     0x13  5      OPC=vmovmskpd_r32_xmm        
  roll $0x1, %r8d                      #  6     0x18  3      OPC=roll_r32_one             
  punpckldq %xmm3, %xmm8               #  7     0x1b  5      OPC=punpckldq_xmm_xmm        
  cvtsi2ssl %r8d, %xmm8                #  8     0x20  5      OPC=cvtsi2ssl_xmm_r32        
  vpunpckhqdq %xmm8, %xmm14, %xmm1     #  9     0x25  5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                                 #  10    0x2a  1      OPC=retq                     
                                                                                          
.size target, .-target
