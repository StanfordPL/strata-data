  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                        
.target:                                        #        0     0      OPC=<label>                   
  callq .move_128_032_xmm2_eax_edx_r8d_r9d      #  1     0     5      OPC=callq_label               
  movd %r9d, %xmm7                              #  2     0x5   5      OPC=movd_xmm_r32              
  vfnmsub231sd %xmm2, %xmm2, %xmm2              #  3     0xa   5      OPC=vfnmsub231sd_xmm_xmm_xmm  
  vmovdqu %xmm7, %xmm5                          #  4     0xf   4      OPC=vmovdqu_xmm_xmm           
  orps %xmm5, %xmm7                             #  5     0x13  3      OPC=orps_xmm_xmm              
  vhsubpd %xmm5, %xmm2, %xmm9                   #  6     0x16  4      OPC=vhsubpd_xmm_xmm_xmm       
  vmovd %eax, %xmm6                             #  7     0x1a  4      OPC=vmovd_xmm_r32             
  vpunpckhdq %ymm9, %ymm2, %ymm4                #  8     0x1e  5      OPC=vpunpckhdq_ymm_ymm_ymm    
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  9     0x23  5      OPC=callq_label               
  retq                                          #  10    0x28  1      OPC=retq                      
                                                                                                    
.size target, .-target
