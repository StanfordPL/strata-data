  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  addsubps %xmm3, %xmm2           #  1     0     4      OPC=addsubps_xmm_xmm   
  callq .move_128_064_xmm2_r8_r9  #  2     0x4   5      OPC=callq_label        
  vzeroall                        #  3     0x9   3      OPC=vzeroall           
  vpmovzxdq %xmm15, %xmm1         #  4     0xc   5      OPC=vpmovzxdq_xmm_xmm  
  callq .move_064_128_r8_r9_xmm1  #  5     0x11  5      OPC=callq_label        
  retq                            #  6     0x16  1      OPC=retq               
                                                                               
.size target, .-target
