  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                   
.target:                             #        0     0      OPC=<label>              
  mulpd %xmm2, %xmm1                 #  1     0     4      OPC=mulpd_xmm_xmm        
  callq .move_128_64_xmm1_xmm8_xmm9  #  2     0x4   5      OPC=callq_label          
  andnpd %xmm8, %xmm1                #  3     0x9   5      OPC=andnpd_xmm_xmm       
  vrsqrtps %xmm8, %xmm13             #  4     0xe   5      OPC=vrsqrtps_xmm_xmm     
  punpcklqdq %xmm1, %xmm9            #  5     0x13  5      OPC=punpcklqdq_xmm_xmm   
  vhaddpd %xmm13, %xmm8, %xmm8       #  6     0x18  5      OPC=vhaddpd_xmm_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm3  #  7     0x1d  5      OPC=callq_label          
  punpcklqdq %xmm3, %xmm1            #  8     0x22  4      OPC=punpcklqdq_xmm_xmm   
  retq                               #  9     0x26  1      OPC=retq                 
                                                                                    
.size target, .-target
