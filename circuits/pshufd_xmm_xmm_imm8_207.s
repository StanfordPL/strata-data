  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  vpand %xmm2, %xmm2, %xmm10                    #  1     0     4      OPC=vpand_xmm_xmm_xmm      
  vmovdqa %ymm10, %ymm3                         #  2     0x4   5      OPC=vmovdqa_ymm_ymm        
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  3     0x9   5      OPC=callq_label            
  vhaddpd %xmm7, %xmm4, %xmm6                   #  4     0xe   4      OPC=vhaddpd_xmm_xmm_xmm    
  vunpckhps %xmm6, %xmm6, %xmm5                 #  5     0x12  4      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  6     0x16  5      OPC=callq_label            
  movss %xmm7, %xmm1                            #  7     0x1b  4      OPC=movss_xmm_xmm          
  retq                                          #  8     0x1f  1      OPC=retq                   
                                                                                                 
.size target, .-target
