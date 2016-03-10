  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label          
  movsldup %xmm9, %xmm9                           #  2     0x5   5      OPC=movsldup_xmm_xmm     
  vmovaps %xmm2, %xmm8                            #  3     0xa   4      OPC=vmovaps_xmm_xmm      
  vrcpps %xmm3, %xmm13                            #  4     0xe   4      OPC=vrcpps_xmm_xmm       
  vhaddps %xmm10, %xmm13, %xmm1                   #  5     0x12  5      OPC=vhaddps_xmm_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1               #  6     0x17  5      OPC=callq_label          
  retq                                            #  7     0x1c  1      OPC=retq                 
                                                                                                 
.size target, .-target
