  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vunpckhps %xmm1, %xmm7, %xmm15                #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm  
  andnps %xmm1, %xmm1                           #  3     0x9   3      OPC=andnps_xmm_xmm         
  punpckhdq %xmm15, %xmm1                       #  4     0xc   5      OPC=punpckhdq_xmm_xmm      
  retq                                          #  5     0x11  1      OPC=retq                   
                                                                                                 
.size target, .-target
