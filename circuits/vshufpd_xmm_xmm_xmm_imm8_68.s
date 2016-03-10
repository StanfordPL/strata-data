  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label               
  pmovsxdq %xmm3, %xmm7             #  2     0x5   5      OPC=pmovsxdq_xmm_xmm          
  vfnmsub213sd %xmm3, %xmm7, %xmm7  #  3     0xa   5      OPC=vfnmsub213sd_xmm_xmm_xmm  
  vpmovsxbq %xmm7, %xmm1            #  4     0xf   5      OPC=vpmovsxbq_xmm_xmm         
  callq .move_064_128_r10_r11_xmm1  #  5     0x14  5      OPC=callq_label               
  punpcklqdq %xmm3, %xmm1           #  6     0x19  4      OPC=punpcklqdq_xmm_xmm        
  retq                              #  7     0x1d  1      OPC=retq                      
                                                                                        
.size target, .-target
