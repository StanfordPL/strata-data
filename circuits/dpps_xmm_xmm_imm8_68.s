  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label         
  pmovsxwd %xmm4, %xmm1                           #  3     0xa   5      OPC=pmovsxwd_xmm_xmm    
  punpckhqdq %xmm7, %xmm1                         #  4     0xf   4      OPC=punpckhqdq_xmm_xmm  
  vmulps %xmm10, %xmm6, %xmm5                     #  5     0x13  5      OPC=vmulps_xmm_xmm_xmm  
  haddps %xmm5, %xmm1                             #  6     0x18  4      OPC=haddps_xmm_xmm      
  retq                                            #  7     0x1c  1      OPC=retq                
                                                                                                
.size target, .-target
