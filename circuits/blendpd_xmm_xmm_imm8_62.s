  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vrsqrtps %xmm1, %xmm10               #  2     0x5   4      OPC=vrsqrtps_xmm_xmm       
  vunpcklpd %xmm10, %xmm13, %xmm10     #  3     0x9   5      OPC=vunpcklpd_xmm_xmm_xmm  
  minss %xmm10, %xmm13                 #  4     0xe   5      OPC=minss_xmm_xmm          
  punpcklqdq %xmm13, %xmm1             #  5     0x13  5      OPC=punpcklqdq_xmm_xmm     
  retq                                 #  6     0x18  1      OPC=retq                   
                                                                                        
.size target, .-target
