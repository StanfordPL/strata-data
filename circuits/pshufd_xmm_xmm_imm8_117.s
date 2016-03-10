  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  movshdup %xmm2, %xmm1                #  1     0     4      OPC=movshdup_xmm_xmm   
  callq .move_128_64_xmm1_xmm10_xmm11  #  2     0x4   5      OPC=callq_label        
  orpd %xmm1, %xmm10                   #  3     0x9   5      OPC=orpd_xmm_xmm       
  punpckldq %xmm1, %xmm11              #  4     0xe   5      OPC=punpckldq_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1  #  5     0x13  5      OPC=callq_label        
  retq                                 #  6     0x18  1      OPC=retq               
                                                                                    
.size target, .-target
