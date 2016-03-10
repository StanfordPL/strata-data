  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                          
.target:                               #        0     0      OPC=<label>                     
  vcvttps2dq %xmm1, %xmm3              #  1     0     4      OPC=vcvttps2dq_xmm_xmm          
  vpunpckhdq %xmm3, %xmm1, %xmm2       #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm      
  vfmsubadd132pd %xmm3, %xmm1, %xmm1   #  3     0x8   5      OPC=vfmsubadd132pd_xmm_xmm_xmm  
  vfnmadd231sd %xmm1, %xmm2, %xmm2     #  4     0xd   5      OPC=vfnmadd231sd_xmm_xmm_xmm    
  callq .move_128_64_xmm2_xmm12_xmm13  #  5     0x12  5      OPC=callq_label                 
  movd %xmm13, %ebx                    #  6     0x17  5      OPC=movd_r32_xmm                
  retq                                 #  7     0x1c  1      OPC=retq                        
                                                                                             
.size target, .-target
