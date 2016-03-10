  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vmovshdup %xmm2, %xmm13                         #  2     0x5   4      OPC=vmovshdup_xmm_xmm        
  vmovq %xmm9, %xmm10                             #  3     0x9   5      OPC=vmovq_xmm_xmm            
  vfmsub132pd %xmm11, %xmm13, %xmm11              #  4     0xe   5      OPC=vfmsub132pd_xmm_xmm_xmm  
  vfmsub132pd %xmm9, %xmm2, %xmm9                 #  5     0x13  5      OPC=vfmsub132pd_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x18  5      OPC=callq_label              
  retq                                            #  7     0x1d  1      OPC=retq                     
                                                                                                     
.size target, .-target
