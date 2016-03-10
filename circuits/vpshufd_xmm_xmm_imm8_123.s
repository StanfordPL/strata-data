  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  callq .move_128_032_xmm2_eax_edx_r8d_r9d      #  1     0     5      OPC=callq_label       
  vzeroall                                      #  2     0x5   3      OPC=vzeroall          
  vmovd %edx, %xmm7                             #  3     0x8   4      OPC=vmovd_xmm_r32     
  movd %r9d, %xmm4                              #  4     0xc   5      OPC=movd_xmm_r32      
  vmovddup %xmm4, %xmm6                         #  5     0x11  4      OPC=vmovddup_xmm_xmm  
  vmovd %r8d, %xmm5                             #  6     0x15  5      OPC=vmovd_xmm_r32     
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  7     0x1a  5      OPC=callq_label       
  retq                                          #  8     0x1f  1      OPC=retq              
                                                                                            
.size target, .-target
