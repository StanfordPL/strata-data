  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  vmovshdup %xmm3, %xmm8                        #  1     0     4      OPC=vmovshdup_xmm_xmm      
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label            
  mulsd %xmm1, %xmm4                            #  3     0x9   4      OPC=mulsd_xmm_xmm          
  punpckhdq %xmm4, %xmm8                        #  4     0xd   5      OPC=punpckhdq_xmm_xmm      
  vunpckhps %xmm8, %xmm4, %xmm1                 #  5     0x12  5      OPC=vunpckhps_xmm_xmm_xmm  
  retq                                          #  6     0x17  1      OPC=retq                   
                                                                                                 
.size target, .-target
