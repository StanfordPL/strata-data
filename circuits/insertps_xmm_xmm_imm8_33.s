  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  movmskpd %xmm5, %r11                          #  2     0x5   5      OPC=movmskpd_r64_xmm       
  vunpcklps %xmm7, %xmm2, %xmm5                 #  3     0xa   4      OPC=vunpcklps_xmm_xmm_xmm  
  movlhps %xmm5, %xmm1                          #  4     0xe   3      OPC=movlhps_xmm_xmm        
  cvtsi2ssl %r11d, %xmm1                        #  5     0x11  5      OPC=cvtsi2ssl_xmm_r32      
  retq                                          #  6     0x16  1      OPC=retq                   
                                                                                                 
.size target, .-target
