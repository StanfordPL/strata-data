  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  vmovaps %ymm2, %ymm1                            #  1     0     4      OPC=vmovaps_ymm_ymm      
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label          
  vandnpd %xmm10, %xmm10, %xmm4                   #  3     0x9   5      OPC=vandnpd_xmm_xmm_xmm  
  movsldup %xmm4, %xmm1                           #  4     0xe   4      OPC=movsldup_xmm_xmm     
  retq                                            #  5     0x12  1      OPC=retq                 
                                                                                                 
.size target, .-target
