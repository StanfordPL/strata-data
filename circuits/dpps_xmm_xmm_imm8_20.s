  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  mulss %xmm2, %xmm1                            #  1     0     4      OPC=mulss_xmm_xmm        
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label          
  vhaddps %xmm4, %xmm7, %xmm13                  #  3     0x9   4      OPC=vhaddps_xmm_xmm_xmm  
  movshdup %xmm13, %xmm1                        #  4     0xd   5      OPC=movshdup_xmm_xmm     
  haddps %xmm4, %xmm1                           #  5     0x12  4      OPC=haddps_xmm_xmm       
  retq                                          #  6     0x16  1      OPC=retq                 
                                                                                               
.size target, .-target
