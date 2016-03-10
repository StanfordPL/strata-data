  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                      
.target:                                    #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label             
  movw %ax, %dx                             #  2     0x5   3      OPC=movw_r16_r16            
  vmovd %edx, %xmm5                         #  3     0x8   4      OPC=vmovd_xmm_r32           
  vpbroadcastq %xmm5, %xmm0                 #  4     0xc   5      OPC=vpbroadcastq_xmm_xmm    
  vpunpckldq %xmm0, %xmm5, %xmm0            #  5     0x11  4      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovsd %xmm0, %xmm2, %xmm1                #  6     0x15  4      OPC=vmovsd_xmm_xmm_xmm      
  retq                                      #  7     0x19  1      OPC=retq                    
                                                                                              
.size target, .-target
