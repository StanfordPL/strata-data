  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  movq %xmm2, %xmm2                    #  1     0     4      OPC=movq_xmm_xmm            
  vandnps %xmm2, %xmm2, %xmm3          #  2     0x4   4      OPC=vandnps_xmm_xmm_xmm     
  vpunpckhdq %xmm2, %xmm1, %xmm13      #  3     0x8   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vaddsubpd %xmm3, %xmm3, %xmm12       #  4     0xc   4      OPC=vaddsubpd_xmm_xmm_xmm   
  callq .move_64_128_xmm12_xmm13_xmm1  #  5     0x10  5      OPC=callq_label             
  retq                                 #  6     0x15  1      OPC=retq                    
                                                                                         
.size target, .-target
