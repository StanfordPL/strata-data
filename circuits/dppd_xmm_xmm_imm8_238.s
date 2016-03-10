  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                          
.target:                                        #        0     0      OPC=<label>                     
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label                 
  vfmsubadd213pd %xmm7, %xmm1, %xmm2            #  2     0x5   5      OPC=vfmsubadd213pd_xmm_xmm_xmm  
  pandn %xmm7, %xmm1                            #  3     0xa   4      OPC=pandn_xmm_xmm               
  vmovaps %xmm2, %xmm11                         #  4     0xe   4      OPC=vmovaps_xmm_xmm             
  vfmadd231pd %xmm1, %xmm1, %xmm11              #  5     0x12  5      OPC=vfmadd231pd_xmm_xmm_xmm     
  unpckhpd %xmm11, %xmm1                        #  6     0x17  5      OPC=unpckhpd_xmm_xmm            
  retq                                          #  7     0x1c  1      OPC=retq                        
                                                                                                      
.size target, .-target
