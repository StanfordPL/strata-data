  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                        
.target:                                        #        0     0      OPC=<label>                   
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label               
  vpunpckhdq %xmm5, %xmm2, %xmm7                #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm    
  vfnmadd231sd %xmm5, %xmm7, %xmm4              #  3     0x9   5      OPC=vfnmadd231sd_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm2  #  4     0xe   5      OPC=callq_label               
  movshdup %xmm2, %xmm1                         #  5     0x13  4      OPC=movshdup_xmm_xmm          
  retq                                          #  6     0x17  1      OPC=retq                      
                                                                                                    
.size target, .-target
