  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  punpckhdq %xmm11, %xmm10             #  2     0x5   5      OPC=punpckhdq_xmm_xmm        
  vfmsub132ss %xmm11, %xmm1, %xmm10    #  3     0xa   5      OPC=vfmsub132ss_xmm_xmm_xmm  
  cvtps2dq %xmm10, %xmm1               #  4     0xf   5      OPC=cvtps2dq_xmm_xmm         
  subsd %xmm1, %xmm1                   #  5     0x14  4      OPC=subsd_xmm_xmm            
  retq                                 #  6     0x18  1      OPC=retq                     
                                                                                          
.size target, .-target
