  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                          
.target:                                        #        0     0      OPC=<label>                     
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label                 
  vzeroall                                      #  2     0x5   3      OPC=vzeroall                    
  xchgl %r13d, %r12d                            #  3     0x8   3      OPC=xchgl_r32_r32               
  movd %r13d, %xmm5                             #  4     0xb   5      OPC=movd_xmm_r32                
  callq .move_064_128_r12_r13_xmm2              #  5     0x10  5      OPC=callq_label                 
  movd %r11d, %xmm7                             #  6     0x15  5      OPC=movd_xmm_r32                
  vfmsubadd132pd %xmm0, %xmm2, %xmm6            #  7     0x1a  5      OPC=vfmsubadd132pd_xmm_xmm_xmm  
  andnps %xmm7, %xmm4                           #  8     0x1f  3      OPC=andnps_xmm_xmm              
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  9     0x22  5      OPC=callq_label                 
  retq                                          #  10    0x27  1      OPC=retq                        
                                                                                                      
.size target, .-target
