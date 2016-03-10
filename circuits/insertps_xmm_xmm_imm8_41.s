  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP  Bytes  Opcode                 
.target:                                          #        0    0      OPC=<label>            
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0    5      OPC=callq_label        
  movlhps %xmm8, %xmm1                            #  2     0x5  4      OPC=movlhps_xmm_xmm    
  xorl %esi, %esi                                 #  3     0x9  2      OPC=xorl_r32_r32       
  cvtsi2ssl %esi, %xmm1                           #  4     0xb  4      OPC=cvtsi2ssl_xmm_r32  
  retq                                            #  5     0xf  1      OPC=retq               
                                                                                              
.size target, .-target
