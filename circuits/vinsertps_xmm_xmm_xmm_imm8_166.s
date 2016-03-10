  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                          
.target:                                          #        0     0      OPC=<label>                     
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label                 
  movshdup %xmm5, %xmm5                           #  2     0x5   4      OPC=movshdup_xmm_xmm            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label                 
  vfmaddsub132ps %xmm1, %xmm6, %xmm5              #  4     0xe   5      OPC=vfmaddsub132ps_xmm_xmm_xmm  
  vmovsldup %xmm8, %xmm1                          #  5     0x13  5      OPC=vmovsldup_xmm_xmm           
  vpunpckhqdq %xmm5, %xmm10, %xmm5                #  6     0x18  4      OPC=vpunpckhqdq_xmm_xmm_xmm     
  vfnmsub213ss %xmm3, %xmm10, %xmm1               #  7     0x1c  5      OPC=vfnmsub213ss_xmm_xmm_xmm    
  vpunpckhdq %xmm1, %xmm9, %xmm6                  #  8     0x21  4      OPC=vpunpckhdq_xmm_xmm_xmm      
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1    #  9     0x25  5      OPC=callq_label                 
  retq                                            #  10    0x2a  1      OPC=retq                        
                                                                                                        
.size target, .-target
