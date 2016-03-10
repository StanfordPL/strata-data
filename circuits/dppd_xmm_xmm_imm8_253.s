  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                   
.target:                               #        0     0      OPC=<label>              
  vmulpd %xmm2, %xmm1, %xmm12          #  1     0     4      OPC=vmulpd_xmm_xmm_xmm   
  vmovaps %xmm12, %xmm10               #  2     0x4   5      OPC=vmovaps_xmm_xmm      
  vandnps %xmm12, %xmm10, %xmm13       #  3     0x9   5      OPC=vandnps_xmm_xmm_xmm  
  haddpd %xmm10, %xmm12                #  4     0xe   5      OPC=haddpd_xmm_xmm       
  callq .move_64_128_xmm12_xmm13_xmm1  #  5     0x13  5      OPC=callq_label          
  retq                                 #  6     0x18  1      OPC=retq                 
                                                                                      
.size target, .-target
