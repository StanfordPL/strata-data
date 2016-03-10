  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                          
.target:                                        #        0     0      OPC=<label>                     
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label                 
  vxorpd %xmm1, %xmm5, %xmm9                    #  2     0x5   4      OPC=vxorpd_xmm_xmm_xmm          
  cvtdq2pd %xmm4, %xmm13                        #  3     0x9   5      OPC=cvtdq2pd_xmm_xmm            
  vfmsubadd213ps %xmm13, %xmm9, %xmm2           #  4     0xe   5      OPC=vfmsubadd213ps_xmm_xmm_xmm  
  vaddsubps %xmm2, %xmm6, %xmm2                 #  5     0x13  4      OPC=vaddsubps_xmm_xmm_xmm       
  vmovdqu %xmm2, %xmm3                          #  6     0x17  4      OPC=vmovdqu_xmm_xmm             
  punpckhdq %xmm13, %xmm3                       #  7     0x1b  5      OPC=punpckhdq_xmm_xmm           
  movups %xmm6, %xmm1                           #  8     0x20  3      OPC=movups_xmm_xmm              
  unpckhps %xmm3, %xmm1                         #  9     0x23  3      OPC=unpckhps_xmm_xmm            
  retq                                          #  10    0x26  1      OPC=retq                        
                                                                                                      
.size target, .-target
