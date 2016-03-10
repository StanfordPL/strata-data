  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm1, %xmm5, %xmm3                #  2     0x5   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vbroadcastss %xmm2, %xmm13                    #  3     0x9   5      OPC=vbroadcastss_xmm_xmm    
  movq %xmm3, %xmm1                             #  4     0xe   4      OPC=movq_xmm_xmm            
  vunpckhps %xmm13, %xmm2, %xmm7                #  5     0x12  5      OPC=vunpckhps_xmm_xmm_xmm   
  movlhps %xmm7, %xmm1                          #  6     0x17  3      OPC=movlhps_xmm_xmm         
  retq                                          #  7     0x1a  1      OPC=retq                    
                                                                                                  
.size target, .-target
